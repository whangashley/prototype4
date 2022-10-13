using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class KnockbackEffect : MonoBehaviour
{
    private AgentAnimations agentAnimations;

    private Vector2 fanHitInput;

    public Vector2 FanHitInput { get => fanHitInput; set => fanHitInput = value; }

    [SerializeField]
    private Rigidbody2D rb;

    [SerializeField]
    private float strength = 20, delay = 0.1f;
    public UnityEvent OnBegin, OnDone;

    private void Awake()
    {
        agentAnimations = GetComponentInChildren<AgentAnimations>();

    }

    public void PlayEffect(GameObject sender)
    {
        StopAllCoroutines();
        OnBegin?.Invoke();
        Vector2 direction = (transform.position - sender.transform.position).normalized;
        rb.AddForce(direction * strength, ForceMode2D.Impulse);
        agentAnimations.PlayFanHitAnim(fanHitInput);
        FindObjectOfType<AudioManager>().Play("fanHitScream");
        StartCoroutine(Reset());
    }
    private IEnumerator Reset() {
        yield return new WaitForSeconds(delay);
        rb.velocity = Vector3.zero;
        OnDone?.Invoke();
    }
}
