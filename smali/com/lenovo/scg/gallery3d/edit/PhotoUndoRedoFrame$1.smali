.class Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;
.super Ljava/lang/Object;
.source "PhotoUndoRedoFrame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 306
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mUndoView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$000(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Landroid/widget/TextView;

    move-result-object v5

    if-ne p1, v5, :cond_2

    .line 307
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->undo()V

    .line 308
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isUndoCanClicked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 309
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->enableUndoView()V

    .line 310
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->enableRedoView()V

    .line 316
    :goto_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getCurrentBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v5, v8, v10}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->showSourceImageView(Landroid/graphics/Bitmap;Z)V

    .line 318
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v5

    const-string v8, "category_photoedit"

    const-string v9, "action_photoedit_undo_btn"

    invoke-virtual {v5, v8, v9, v11, v10}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 421
    :cond_0
    :goto_1
    return-void

    .line 312
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->unenableUndoView()V

    .line 313
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->enableRedoView()V

    goto :goto_0

    .line 321
    :cond_2
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mRedoView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$200(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Landroid/widget/TextView;

    move-result-object v5

    if-ne p1, v5, :cond_4

    .line 322
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->redo()V

    .line 323
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isRedoCanClicked()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 324
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->enableUndoView()V

    .line 325
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->enableRedoView()V

    .line 330
    :goto_2
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getCurrentBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v5, v8, v10}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->showSourceImageView(Landroid/graphics/Bitmap;Z)V

    .line 332
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v5

    const-string v8, "category_photoedit"

    const-string v9, "action_photoedit_redo_btn"

    invoke-virtual {v5, v8, v9, v11, v10}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 327
    :cond_3
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->unenableRedoView()V

    .line 328
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->enableUndoView()V

    goto :goto_2

    .line 335
    :cond_4
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSaveButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$300(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Landroid/widget/ImageView;

    move-result-object v5

    if-ne p1, v5, :cond_7

    .line 336
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->showProgressBar()V

    .line 337
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSaveButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$300(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 339
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getCurrentBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 340
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_5

    .line 341
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->hideProgressBar()V

    .line 342
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSaveButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$300(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setClickable(Z)V

    goto/16 :goto_1

    .line 346
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v5

    int-to-long v2, v5

    .line 347
    .local v2, "bitmapSize":J
    invoke-static {v11}, Lcom/lenovo/scg/camera/Storage;->getAvailableSpace(Landroid/content/Context;)J

    move-result-wide v6

    .line 348
    .local v6, "storageSpace":J
    cmp-long v5, v6, v2

    if-gtz v5, :cond_6

    .line 349
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->hideProgressBar()V

    .line 350
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSaveButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$300(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 351
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # invokes: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->showSDCardFullDialog()V
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$400(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)V

    goto/16 :goto_1

    .line 356
    :cond_6
    new-instance v1, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1$1;-><init>(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;)V

    .line 376
    .local v1, "callback":Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask$Callback;
    new-instance v4, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$500(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Landroid/content/Context;

    move-result-object v5

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getFirstPhotoUri()Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v4, v5, v8, v1}, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask$Callback;)V

    .line 377
    .local v4, "saveCopyTask":Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;
    new-array v5, v9, [Landroid/graphics/Bitmap;

    aput-object v0, v5, v10

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 379
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v5

    const-string v8, "category_photoedit"

    const-string v9, "action_photoedit_save_btn"

    invoke-virtual {v5, v8, v9, v11, v10}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 383
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "callback":Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask$Callback;
    .end local v2    # "bitmapSize":J
    .end local v4    # "saveCopyTask":Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;
    .end local v6    # "storageSpace":J
    :cond_7
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEditBackImage:Landroid/widget/ImageButton;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$600(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Landroid/widget/ImageButton;

    move-result-object v5

    if-ne p1, v5, :cond_c

    .line 384
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isUndoCanClicked()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isRedoCanClicked()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 385
    :cond_8
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->showConfigExitEditDialog()V

    goto/16 :goto_1

    .line 387
    :cond_9
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isStartFromCameraOrContinuePics()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 388
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->setPortrait()V

    .line 396
    :goto_3
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->goBack()V

    goto/16 :goto_1

    .line 390
    :cond_a
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mIsStartFromCamera()Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isAutoRotate()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 391
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->setScreenFullSensor()V

    goto :goto_3

    .line 393
    :cond_b
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->setPortrait()V

    goto :goto_3

    .line 398
    :cond_c
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mBeautyViews:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$700(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Landroid/widget/LinearLayout;

    move-result-object v5

    if-ne p1, v5, :cond_d

    .line 400
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v5

    const-string v8, "category_photoedit"

    const-string v9, "action_photoedit_beauty_btn"

    invoke-virtual {v5, v8, v9, v11, v10}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 403
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->startBeautyActivity()V

    goto/16 :goto_1

    .line 404
    :cond_d
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSpecialEffectsViews:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$800(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Landroid/widget/LinearLayout;

    move-result-object v5

    if-ne p1, v5, :cond_e

    .line 407
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v5

    const-string v8, "category_photoedit"

    const-string v9, "action_photoedit_effect_btn"

    invoke-virtual {v5, v8, v9, v11, v10}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 411
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->startSpecialEffectsActivity()V

    goto/16 :goto_1

    .line 412
    :cond_e
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mMicroViews:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$900(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Landroid/widget/LinearLayout;

    move-result-object v5

    if-ne p1, v5, :cond_f

    .line 413
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->startTiltShiftActivity()V

    goto/16 :goto_1

    .line 414
    :cond_f
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mMosaicViews:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$1000(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Landroid/widget/LinearLayout;

    move-result-object v5

    if-ne p1, v5, :cond_0

    .line 416
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v5

    const-string v8, "category_photoedit"

    const-string v9, "action_photoedit_mosaic_btn"

    invoke-virtual {v5, v8, v9, v11, v10}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 419
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->startMosaicActivity()V

    goto/16 :goto_1
.end method
