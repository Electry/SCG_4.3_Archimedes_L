.class public Lcom/lenovo/scg/gallery3d/ui/WakeLockHoldingProgressListener;
.super Ljava/lang/Object;
.source "WakeLockHoldingProgressListener.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;


# static fields
.field private static final DEFAULT_WAKE_LOCK_LABEL:Ljava/lang/String; = "Gallery Progress Listener"


# instance fields
.field private mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1
    .param p1, "galleryActivity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 34
    const-string v0, "Gallery Progress Listener"

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/ui/WakeLockHoldingProgressListener;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V
    .locals 3
    .param p1, "galleryActivity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/WakeLockHoldingProgressListener;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 39
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/WakeLockHoldingProgressListener;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 40
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x6

    invoke-virtual {v0, v1, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/WakeLockHoldingProgressListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 41
    return-void
.end method


# virtual methods
.method protected getActivity()Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/WakeLockHoldingProgressListener;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method public onConfirmDialogDismissed(Z)V
    .locals 0
    .param p1, "confirmed"    # Z

    .prologue
    .line 63
    return-void
.end method

.method public onConfirmDialogShown()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public onProgressComplete(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/WakeLockHoldingProgressListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 46
    return-void
.end method

.method public onProgressStart()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/WakeLockHoldingProgressListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 51
    return-void
.end method

.method public onProgressUpdate(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 59
    return-void
.end method
