.class Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$3;
.super Landroid/os/Handler;
.source "Le3dGLSurfaceViewImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->initHandler()V
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
    .line 168
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$3;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 173
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 178
    :goto_0
    return-void

    .line 175
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$3;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->exit()V

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
