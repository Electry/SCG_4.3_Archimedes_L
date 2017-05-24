.class Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$1;
.super Ljava/lang/Object;
.source "Le3dGLSurfaceViewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$1;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$1;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # getter for: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mRenderer:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$000(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;

    move-result-object v0

    # invokes: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->hideView()V
    invoke-static {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->access$100(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;)V

    .line 146
    return-void
.end method
