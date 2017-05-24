.class public Lcom/lenovo/scg/camera/focus/SimpleFocusGroup;
.super Lcom/lenovo/scg/camera/focus/FocusGroup;
.source "SimpleFocusGroup.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;-><init>()V

    .line 7
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->setAeAfLockListenter(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;)V

    .line 8
    return-void
.end method
