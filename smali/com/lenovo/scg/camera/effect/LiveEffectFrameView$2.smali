.class Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$2;
.super Ljava/lang/Object;
.source "LiveEffectFrameView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->setEffectHideOrShowState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

.field final synthetic val$isShow:Z


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;Z)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$2;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    iput-boolean p2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$2;->val$isShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$2;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mFrameManager:Lcom/lenovo/scg/camera/effect/EffectFrameManager;
    invoke-static {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->access$100(Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;)Lcom/lenovo/scg/camera/effect/EffectFrameManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$2;->val$isShow:Z

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->setEffectHideOrShowState(Z)V

    .line 103
    return-void
.end method
