.class Lcom/lenovo/scg/camera/rewind/RewindSelectView$4;
.super Ljava/lang/Object;
.source "RewindSelectView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/rewind/RewindSelectView;->endAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$4;->this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 417
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$4;->this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    # getter for: Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mAnimRoot:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->access$700(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 418
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$4;->this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    # getter for: Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mAnimRoot:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->access$700(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$4;->this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    # setter for: Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mAnimRoot:Landroid/widget/FrameLayout;
    invoke-static {v0, v2}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->access$702(Lcom/lenovo/scg/camera/rewind/RewindSelectView;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 420
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$4;->this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    # setter for: Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mItems:Ljava/util/ArrayList;
    invoke-static {v0, v2}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->access$802(Lcom/lenovo/scg/camera/rewind/RewindSelectView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 421
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$4;->this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mIsInAnim:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->access$202(Lcom/lenovo/scg/camera/rewind/RewindSelectView;Z)Z

    .line 422
    return-void
.end method
