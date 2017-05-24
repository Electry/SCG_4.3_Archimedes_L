.class Lcom/lenovo/scg/photos/AlbumActivity$2;
.super Landroid/database/ContentObserver;
.source "AlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/photos/AlbumActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/photos/AlbumActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/photos/AlbumActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/lenovo/scg/photos/AlbumActivity$2;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 238
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity$2;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumActivity$2;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/photos/AlbumActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->isMediaScannerScanning(Landroid/content/ContentResolver;)Z

    move-result v2

    # invokes: Lcom/lenovo/scg/photos/AlbumActivity;->rebake(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/photos/AlbumActivity;->access$100(Lcom/lenovo/scg/photos/AlbumActivity;ZZ)V

    .line 241
    return-void
.end method
