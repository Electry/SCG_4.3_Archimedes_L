.class Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$8;
.super Ljava/lang/Object;
.source "GoldBoxGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->onSingleTapUp(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

.field final synthetic val$e:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$8;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$8;->val$e:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$8;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mRenderer:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->access$000(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$8;->val$e:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$8;->val$e:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->onSingleTapUp(FF)V

    .line 299
    return-void
.end method
