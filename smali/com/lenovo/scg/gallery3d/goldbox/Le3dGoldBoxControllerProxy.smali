.class public Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerProxy;
.super Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;
.source "Le3dGoldBoxControllerProxy.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxController;


# static fields
.field static final TAG:Ljava/lang/String; = "Le3dGoldBoxControllerProxy"


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dController;)V
    .locals 0
    .param p1, "controller"    # Lcom/lenovo/scg/common/le3d/Le3dController;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;-><init>(Lcom/lenovo/scg/common/le3d/Le3dController;)V

    .line 21
    return-void
.end method

.method private getController()Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxController;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerProxy;->mController:Lcom/lenovo/scg/common/le3d/Le3dController;

    check-cast v0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxController;

    return-object v0
.end method


# virtual methods
.method public exit()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "exit"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerProxy;->sendFunction(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method protected onHandleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 61
    return-void
.end method

.method public startCamera()V
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "startCamera"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerProxy;->sendFunction(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public startFaceEffect()V
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "startFaceEffect"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerProxy;->sendFunction(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public startMaterialCenter()V
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "startMaterialCenter"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerProxy;->sendFunction(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public startPuzzle()V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "startPuzzle"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerProxy;->sendFunction(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public startQRCode()V
    .locals 1

    .prologue
    .line 49
    const-string/jumbo v0, "startQRCode"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerProxy;->sendFunction(Ljava/lang/String;)V

    .line 50
    return-void
.end method
