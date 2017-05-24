.class public Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerImpl;
.super Ljava/lang/Object;
.source "Le3dGoldBoxControllerImpl.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxController;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerImpl;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerImpl;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->hideGoldBoxView()V

    .line 64
    return-void
.end method

.method public startCamera()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerImpl;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->startCamera()V

    .line 26
    return-void
.end method

.method public startFaceEffect()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerImpl;->mContext:Landroid/content/Context;

    const-class v2, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .local v0, "requestIntent":Landroid/content/Intent;
    const-string v1, "android.boxcontrol.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string/jumbo v1, "request_pics_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    const-string v1, "is_from_goldbox"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 36
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 37
    return-void
.end method

.method public startMaterialCenter()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public startPuzzle()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerImpl;->mContext:Landroid/content/Context;

    const-class v2, Lcom/lenovo/scg/photos/AlbumActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
    return-void
.end method

.method public startQRCode()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lenovo.scg.minicamera.qrcode.start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 58
    return-void
.end method
