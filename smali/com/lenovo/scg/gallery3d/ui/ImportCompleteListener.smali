.class public Lcom/lenovo/scg/gallery3d/ui/ImportCompleteListener;
.super Ljava/lang/Object;
.source "ImportCompleteListener.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;


# instance fields
.field private mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0
    .param p1, "galleryActivity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/ImportCompleteListener;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 32
    return-void
.end method

.method private goToImportedAlbum()V
    .locals 4

    .prologue
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/local/all/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->IMPORTED_BUCKET_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "pathOfImportedAlbum":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "media-path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/ImportCompleteListener;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    invoke-virtual {v2, v3, v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 56
    return-void
.end method


# virtual methods
.method public onConfirmDialogDismissed(Z)V
    .locals 0
    .param p1, "confirmed"    # Z

    .prologue
    .line 60
    return-void
.end method

.method public onConfirmDialogShown()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public onProgressComplete(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    const/4 v2, 0x1

    .line 38
    if-ne p1, v2, :cond_0

    .line 39
    const v0, 0x7f0f06b1

    .line 40
    .local v0, "message":I
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/ImportCompleteListener;->goToImportedAlbum()V

    .line 44
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/ImportCompleteListener;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 45
    return-void

    .line 42
    .end local v0    # "message":I
    :cond_0
    const v0, 0x7f0f06b2

    .restart local v0    # "message":I
    goto :goto_0
.end method

.method public onProgressStart()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onProgressUpdate(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 49
    return-void
.end method
