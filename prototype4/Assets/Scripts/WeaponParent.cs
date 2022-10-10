using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WeaponParent : MonoBehaviour
{
    public SpriteRenderer characterRenderer, weaponRenderer;

    public Vector2 PointerPosition { get; set; }

    public Animator weaponAnimator;
    public float delay = 0.3f;
    private bool fireBlocked;

    public bool IsFiring { get; private set; }

    public void ResetIsFiring() {
        IsFiring = false;
    }

    public Transform circleOrigin;
    public float radius;

    private void Update() {
        if (IsFiring)
            return;
        Vector2 direction = (PointerPosition - (Vector2)transform.position).normalized;
        transform.right = (PointerPosition-(Vector2)transform.position).normalized;

        Vector2 scale = transform.localScale;
        if (direction.x < 0) {
            scale.y = -1;
        }
        else if (direction.x > 0) {
            scale.y = 1;
        }
        transform.localScale = scale;

        if (transform.eulerAngles.z > 0 && transform.eulerAngles.z < 180) {
            weaponRenderer.sortingOrder = characterRenderer.sortingOrder - 1;
        }
        else {
            weaponRenderer.sortingOrder = characterRenderer.sortingOrder + 1;
        }
    }

    public void Fire() {
        if (fireBlocked)
            return;
        weaponAnimator.SetTrigger("Fire");
        IsFiring = true;
        fireBlocked = true;
        StartCoroutine(DelayFire());
    }

    private IEnumerator DelayFire()
    {
        yield return new WaitForSeconds(delay);
        fireBlocked = false;
    }

    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.blue;
        Vector3 position = circleOrigin == null ? Vector3.zero : circleOrigin.position;
        Gizmos.DrawWireSphere(position, radius);
    }

    public void DetectColliders()
    {
        foreach (Collider2D collider in Physics2D.OverlapCircleAll(circleOrigin.position,radius))
        {
            //first should stun the enemies
            //then should knockback the enemies slightly
            Debug.Log(collider.name);
        }
    }
}
 