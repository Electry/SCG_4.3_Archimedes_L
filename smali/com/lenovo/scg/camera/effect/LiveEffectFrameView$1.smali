.class Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$1;
.super Ljava/lang/Object;
.source "LiveEffectFrameView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->changeScreenEffect(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

.field final synthetic val$type:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$1;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    iput-object p2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$1;->val$type:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$1;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mFrameManager:Lcom/lenovo/scg/camera/effect/EffectFrameManager;
    invoke-static {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->access$100(Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;)Lcom/lenovo/scg/camera/effect/EffectFrameManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$1;->val$type:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$1;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->access$000(Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;)Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->changeScreenEffect(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)Z

    .line 91
    return-void
.end method
