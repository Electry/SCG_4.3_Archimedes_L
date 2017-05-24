.class Lcom/lenovo/scg/camera/focus/FocusOverlayManager$1;
.super Ljava/lang/Object;
.source "FocusOverlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->updateFocusGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/focus/FocusOverlayManager;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$1;->this$0:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$1;->this$0:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    # getter for: Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mUI:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;
    invoke-static {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->access$000(Lcom/lenovo/scg/camera/focus/FocusOverlayManager;)Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getState()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->AEAF_DIFFER_LOCKED:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-eq v0, v1, :cond_0

    .line 358
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$1;->this$0:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    # getter for: Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mUI:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;
    invoke-static {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->access$000(Lcom/lenovo/scg/camera/focus/FocusOverlayManager;)Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->clearFocus()V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$1;->this$0:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    # getter for: Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;
    invoke-static {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->access$100(Lcom/lenovo/scg/camera/focus/FocusOverlayManager;)Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->updateFocusGroup()V

    .line 361
    return-void
.end method
