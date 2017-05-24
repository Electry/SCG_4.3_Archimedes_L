.class Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/PhotoPage;->init(Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V
    .locals 0

    .prologue
    .line 3784
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingFinished(Z)V
    .locals 8
    .param p1, "loadingFailed"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3860
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhotoPage:onLoadingFinished:mModel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$3000(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":mIsActive:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsActive:Z
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$4900(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 3862
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    iget-object v0, v3, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 3863
    .local v0, "mTempActivity":Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->isShowTab()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3864
    invoke-virtual {v0, v6}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showTabMenu(Z)V

    .line 3866
    :cond_0
    invoke-virtual {v0, v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->fullScreen(Z)V

    .line 3867
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->LeftMenuConfirm()V

    .line 3869
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$3000(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$3000(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    move-result-object v3

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3870
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$3000(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v2

    .line 3871
    .local v2, "photo":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v2, :cond_2

    .line 3872
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/lenovo/scg/gallery3d/data/MediaItem;)V
    invoke-static {v3, v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$3100(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Lcom/lenovo/scg/gallery3d/data/MediaItem;)V

    .line 3874
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$600(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$100(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getMediaType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setDateMark(Ljava/lang/String;)V

    .line 3901
    .end local v2    # "photo":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_1
    :goto_0
    return-void

    .line 3877
    .restart local v2    # "photo":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$2800(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3878
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$2800(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v1

    .line 3879
    .local v1, "nCnt":I
    const-string v3, "PhotoPage onLoadingFinished nCnt=%d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3880
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$2800(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->getNumberOfDeletions()I

    move-result v3

    if-nez v3, :cond_1

    if-gt v1, v7, :cond_1

    .line 3881
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/app/StateManager;->finishState(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    .line 3882
    const-string v3, "PhotoPage finished"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0

    .line 3885
    .end local v1    # "nCnt":I
    .end local v2    # "photo":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsActive:Z
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$4900(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3889
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsTimeSort:Z
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$5000(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3890
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSetTimeSurper:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$5100(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->getNumberOfDeletions()I

    move-result v3

    if-nez v3, :cond_1

    .line 3891
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/app/StateManager;->finishState(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    goto :goto_0

    .line 3894
    :cond_4
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$2800(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->getNumberOfDeletions()I

    move-result v3

    if-nez v3, :cond_1

    .line 3895
    const-string v3, "PhotoPage:onLoadingFinished:finishState."

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 3896
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/app/StateManager;->finishState(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    goto/16 :goto_0
.end method

.method public onLoadingStarted()V
    .locals 0

    .prologue
    .line 3905
    return-void
.end method

.method public onPhotoChanged(ILcom/lenovo/scg/gallery3d/data/Path;)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "item"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 3806
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->stopSpeechPic()V
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$3900(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    .line 3811
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$4700(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)I

    move-result v0

    .line 3812
    .local v0, "oldIndex":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # setter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I
    invoke-static {v2, p1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$4702(Lcom/lenovo/scg/gallery3d/app/PhotoPage;I)I

    .line 3814
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$4800(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3815
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$4700(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)I

    move-result v2

    if-lez v2, :cond_0

    .line 3816
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # setter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z
    invoke-static {v2, v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$2602(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Z)Z

    .line 3819
    :cond_0
    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$4700(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$600(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3824
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$2000(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/AppBridge;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3825
    const-string v2, "CameraToFilmstrip"

    const-string v3, "Swipe"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3835
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$2600(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3836
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$3000(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3837
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$3000(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    move-result-object v2

    invoke-interface {v2, v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    .line 3838
    .local v1, "photo":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/lenovo/scg/gallery3d/data/MediaItem;)V
    invoke-static {v2, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$3100(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Lcom/lenovo/scg/gallery3d/data/MediaItem;)V

    .line 3840
    .end local v1    # "photo":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->updateBars()V
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$2100(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    .line 3843
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getPhotoEditorActionBar()Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3844
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getPhotoEditorActionBar()Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getCurrentMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->setMediaItem(Lcom/lenovo/scg/gallery3d/data/MediaItem;)V

    .line 3855
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->refreshHidingMessage()V
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$400(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    .line 3856
    return-void

    .line 3827
    :cond_4
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$4700(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 3828
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x12c

    add-long/2addr v4, v6

    # setter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraSwitchCutoff:J
    invoke-static {v2, v4, v5}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$2702(Lcom/lenovo/scg/gallery3d/app/PhotoPage;J)J

    .line 3829
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$600(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->stopScrolling()V

    goto :goto_0

    .line 3830
    :cond_5
    if-lt v0, v3, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$4700(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)I

    move-result v2

    if-nez v2, :cond_1

    .line 3831
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$600(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->setWantPictureCenterCallbacks(Z)V

    .line 3832
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # setter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z
    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$2602(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Z)Z

    goto/16 :goto_0
.end method
