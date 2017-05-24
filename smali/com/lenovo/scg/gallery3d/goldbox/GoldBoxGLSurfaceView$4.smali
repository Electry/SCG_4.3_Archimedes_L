.class Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$4;
.super Ljava/lang/Object;
.source "GoldBoxGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$4;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$4;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mRenderer:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->access$000(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->onBackPressed()V

    .line 160
    return-void
.end method
