.class public Lcom/lenovo/scg/camera/focus/SmartFocusGroup;
.super Lcom/lenovo/scg/camera/focus/FocusGroup;
.source "SmartFocusGroup.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartFocusGroup"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;-><init>()V

    .line 11
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->setAeAfLockListenter(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected startPosChangeDet()Z
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->startPosChangeDet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
