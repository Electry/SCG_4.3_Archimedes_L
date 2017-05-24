.class Lcom/lenovo/scg/camera/PhotoModule$LoadThumbnailTask;
.super Landroid/os/AsyncTask;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/lenovo/scg/camera/Thumbnail;",
        ">;"
    }
.end annotation


# instance fields
.field private mLookAtCache:Z

.field final synthetic this$0:Lcom/lenovo/scg/camera/PhotoModule;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/PhotoModule;Z)V
    .locals 0
    .param p2, "lookAtCache"    # Z

    .prologue
    .line 6668
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule$LoadThumbnailTask;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6669
    iput-boolean p2, p0, Lcom/lenovo/scg/camera/PhotoModule$LoadThumbnailTask;->mLookAtCache:Z

    .line 6670
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/lenovo/scg/camera/Thumbnail;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 6675
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule$LoadThumbnailTask;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v1, v5, Lcom/lenovo/scg/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 6676
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 6677
    .local v3, "t":Lcom/lenovo/scg/camera/Thumbnail;
    iget-boolean v5, p0, Lcom/lenovo/scg/camera/PhotoModule$LoadThumbnailTask;->mLookAtCache:Z

    if-eqz v5, :cond_0

    .line 6678
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule$LoadThumbnailTask;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v5, v5, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/CameraActivity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/lenovo/scg/camera/Thumbnail;->getLastThumbnailFromFile(Ljava/io/File;Landroid/content/ContentResolver;)Lcom/lenovo/scg/camera/Thumbnail;

    move-result-object v3

    .line 6681
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule$LoadThumbnailTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v3, v4

    .line 6701
    .end local v3    # "t":Lcom/lenovo/scg/camera/Thumbnail;
    :cond_1
    :goto_0
    return-object v3

    .line 6683
    .restart local v3    # "t":Lcom/lenovo/scg/camera/Thumbnail;
    :cond_2
    if-nez v3, :cond_1

    .line 6684
    new-array v2, v7, [Lcom/lenovo/scg/camera/Thumbnail;

    .line 6686
    .local v2, "result":[Lcom/lenovo/scg/camera/Thumbnail;
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule$LoadThumbnailTask;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v5, v5, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/scg/camera/MaskBitmapHolder;->getInstance(Landroid/content/res/Resources;)Lcom/lenovo/scg/camera/MaskBitmapHolder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule$LoadThumbnailTask;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;
    invoke-static {v6}, Lcom/lenovo/scg/camera/PhotoModule;->access$900(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/PhotoUI;->getThumbnailViewWidth()I

    move-result v6

    invoke-static {v1, v2, v5, v6}, Lcom/lenovo/scg/camera/Thumbnail;->getLastThumbnailFromContentResolverWithWidth(Landroid/content/ContentResolver;[Lcom/lenovo/scg/camera/Thumbnail;Lcom/lenovo/scg/camera/MaskBitmapHolder;I)I

    move-result v0

    .line 6687
    .local v0, "code":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v3, v4

    .line 6695
    goto :goto_0

    .line 6693
    :pswitch_1
    const/4 v4, 0x0

    aget-object v3, v2, v4

    goto :goto_0

    .line 6697
    :pswitch_2
    invoke-virtual {p0, v7}, Lcom/lenovo/scg/camera/PhotoModule$LoadThumbnailTask;->cancel(Z)Z

    move-object v3, v4

    .line 6698
    goto :goto_0

    .line 6687
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 6664
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule$LoadThumbnailTask;->doInBackground([Ljava/lang/Void;)Lcom/lenovo/scg/camera/Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/lenovo/scg/camera/Thumbnail;)V
    .locals 2
    .param p1, "thumbnail"    # Lcom/lenovo/scg/camera/Thumbnail;

    .prologue
    .line 6707
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule$LoadThumbnailTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6715
    :cond_0
    :goto_0
    return-void

    .line 6709
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$LoadThumbnailTask;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoModule;->access$900(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/PhotoUI;->updateThumbnailView(Lcom/lenovo/scg/camera/Thumbnail;)V

    .line 6711
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$LoadThumbnailTask;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->isCameraAppShown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$LoadThumbnailTask;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoModule;->getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isBigWheelShowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6712
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$LoadThumbnailTask;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoModule;->access$900(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->getThumbnailButton()Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 6664
    check-cast p1, Lcom/lenovo/scg/camera/Thumbnail;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule$LoadThumbnailTask;->onPostExecute(Lcom/lenovo/scg/camera/Thumbnail;)V

    return-void
.end method
