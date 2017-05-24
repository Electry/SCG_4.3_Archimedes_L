.class Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;
.super Ljava/lang/Object;
.source "PhotoEditFrame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 237
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mEditViews:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$000(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Landroid/widget/LinearLayout;

    move-result-object v6

    if-ne p1, v6, :cond_2

    .line 239
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isDoingEdit()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 240
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$200(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0f08b3

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 241
    const-string v6, "WDY:AllEffectsBar"

    const-string v7, "isDoingEdit : true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->setPortrait()V

    .line 248
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->hidePhotoEditMoreLayout()V

    .line 249
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->startEditBarOutAnimation()V

    .line 250
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # invokes: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->startTopViewsOutAnim()V
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$300(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)V

    .line 251
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->startZoomInAnimation()V

    .line 253
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const-string v7, "category_photoedit"

    const-string v8, "action_photoedit_mode_btn"

    invoke-virtual {v6, v7, v8, v10, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 256
    :cond_2
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShearViews:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$400(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Landroid/widget/LinearLayout;

    move-result-object v6

    if-ne p1, v6, :cond_3

    .line 258
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const-string v7, "category_photoedit"

    const-string v8, "action_photoedit_shear_btn"

    invoke-virtual {v6, v7, v8, v10, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 261
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->crop()V

    goto :goto_0

    .line 262
    :cond_3
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRotateViews:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$500(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Landroid/widget/LinearLayout;

    move-result-object v6

    if-ne p1, v6, :cond_4

    .line 264
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const-string v7, "category_photoedit"

    const-string v8, "action_photoedit_rotate_btn"

    invoke-virtual {v6, v7, v8, v10, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 270
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->rotatePhoto(Z)V

    goto :goto_0

    .line 272
    :cond_4
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareViews:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$600(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Landroid/widget/LinearLayout;

    move-result-object v6

    if-ne p1, v6, :cond_8

    .line 273
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->hidePhotoEditMoreLayout()V

    .line 275
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const-string v7, "category_photoedit"

    const-string v8, "action_photoedit_share_btn"

    invoke-virtual {v6, v7, v8, v10, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 281
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v3

    .line 282
    .local v3, "mediaItem":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getActivity()Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    .line 283
    .local v0, "activity":Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getpath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v4

    .line 284
    .local v4, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getMediaType()I

    move-result v6

    and-int/lit8 v6, v6, 0x6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getSupportShareCenter()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$200(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v6

    if-nez v6, :cond_5

    .line 296
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getContentUri(Lcom/lenovo/scg/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v7

    # invokes: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->showSharePopupWindow(Landroid/net/Uri;)V
    invoke-static {v6, v7}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$700(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 298
    :cond_5
    if-eqz v3, :cond_6

    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getSupportShareCenter()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$200(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 305
    :cond_7
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getContentUri(Lcom/lenovo/scg/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v5

    .line 307
    .local v5, "uri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    new-instance v7, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    const v8, 0x7f040169

    invoke-direct {v7, v0, v8}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;-><init>(Landroid/app/Activity;I)V

    # setter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;
    invoke-static {v6, v7}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$802(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;Lcom/lenovo/scg/gallery3d/edit/RotateDialog;)Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    .line 308
    new-instance v2, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;

    invoke-direct {v2, v0, v5}, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 309
    .local v2, "listView":Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;
    new-instance v6, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1$1;

    invoke-direct {v6, p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1$1;-><init>(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;)V

    invoke-virtual {v2, v6}, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->setItemClickListener(Lcom/lenovo/scg/gallery3d/edit/SetasListView$ItemClickListener;)V

    .line 321
    new-instance v1, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1$2;-><init>(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;)V

    .line 331
    .local v1, "cancelRunnable":Ljava/lang/Runnable;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$800(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$200(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0f07d1

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$200(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0f066c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v1}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 332
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    const/4 v7, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareToMoreIsShown:Z
    invoke-static {v6, v7}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$902(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;Z)Z

    .line 333
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$800(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    move-result-object v6

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-virtual {v6, v2, v7, v8}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->setView(Landroid/view/View;II)V

    .line 335
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$800(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->showButtonText()V

    .line 337
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$800(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$200(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d00bc

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->setBackground(I)V

    .line 338
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->rotateShareDialog()V

    goto/16 :goto_0

    .line 341
    .end local v0    # "activity":Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .end local v1    # "cancelRunnable":Ljava/lang/Runnable;
    .end local v2    # "listView":Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;
    .end local v3    # "mediaItem":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .end local v4    # "path":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_8
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mDeleteViews:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$1000(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Landroid/widget/LinearLayout;

    move-result-object v6

    if-ne p1, v6, :cond_9

    .line 342
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->deletePhoto()V

    .line 344
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const-string v7, "category_photoedit"

    const-string v8, "action_photoedit_delete_btn"

    invoke-virtual {v6, v7, v8, v10, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 347
    :cond_9
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mMoreButton:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$1100(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Landroid/widget/ImageView;

    move-result-object v6

    if-ne p1, v6, :cond_a

    .line 349
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const-string v7, "category_photoedit"

    const-string v8, "action_photoedit_more_btn"

    invoke-virtual {v6, v7, v8, v10, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 352
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->updatePhotoEditMoreLayoutVisible()V

    goto/16 :goto_0

    .line 353
    :cond_a
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mImageView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$1200(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Landroid/widget/ImageView;

    move-result-object v6

    if-ne p1, v6, :cond_0

    .line 354
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->goBack()V

    goto/16 :goto_0
.end method
