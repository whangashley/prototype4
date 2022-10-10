using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class AnimEventHelper : MonoBehaviour
{
    public UnityEvent OnAnimationEventTriggered, OnFirePerformed;

    public void TriggerEvent()
    {
        OnAnimationEventTriggered?.Invoke();
    }

    public void TriggerFire() 
    {
        OnFirePerformed?.Invoke();
    }
}
