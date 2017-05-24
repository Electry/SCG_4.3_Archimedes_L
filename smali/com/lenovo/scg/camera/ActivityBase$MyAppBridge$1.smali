.class Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge$1;
.super Ljava/lang/Object;
.source "ActivityBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->setCameraOverlayGLView(Lcom/lenovo/scg/gallery3d/ui/GLView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;

.field final synthetic val$view:Lcom/lenovo/scg/gallery3d/ui/GLView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;Lcom/lenovo/scg/gallery3d/ui/GLView;)V
    .locals 0

    .prologue
    .line 802
    iput-object p1, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge$1;->this$1:Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;

    iput-object p2, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge$1;->val$view:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 807
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge$1;->this$1:Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;

    # getter for: Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->mServer:Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->access$700(Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;)Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge$1;->this$1:Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;

    # getter for: Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->mServer:Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->access$700(Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;)Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge$1;->val$view:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;->setCameraOverlayGLView(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 808
    :cond_0
    return-void
.end method
