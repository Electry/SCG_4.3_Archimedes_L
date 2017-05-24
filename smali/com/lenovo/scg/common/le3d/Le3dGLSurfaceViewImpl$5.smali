.class Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$5;
.super Ljava/lang/Object;
.source "Le3dGLSurfaceViewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->entry(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

.field final synthetic val$windowType:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$5;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    iput-object p2, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$5;->val$windowType:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$5;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # getter for: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mRenderer:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$000(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$5;->val$windowType:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    # invokes: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->entry(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->access$200(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V

    .line 223
    return-void
.end method
