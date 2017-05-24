.class Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout$1;
.super Ljava/lang/Object;
.source "PhotoEditMoreLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 160
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->access$000(Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    .line 161
    .local v0, "mediaItem":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mUsedAsViews:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 162
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getMediaType()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 163
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mMoreItems:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->access$200(Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 164
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->access$000(Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->setas()V

    .line 167
    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    const-string v2, "category_photoedit"

    const-string v3, "action_photoedit_more_as_btn"

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 186
    :cond_1
    :goto_0
    return-void

    .line 170
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mSlidShowViews:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->access$300(Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-ne p1, v1, :cond_4

    .line 171
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getMediaType()I

    move-result v1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->access$000(Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isCanSlidShow()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 172
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->hide()V

    .line 173
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->access$000(Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->slideShow()V

    .line 176
    :cond_3
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    const-string v2, "category_photoedit"

    const-string v3, "action_photoedit_more_slideshow_btn"

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 178
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mDetailsViews:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->access$400(Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mMoreItems:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->access$200(Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 181
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    const-string v2, "category_photoedit"

    const-string v3, "action_photoedit_more_detail_btn"

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 184
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->access$000(Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->showDetails()V

    goto :goto_0
.end method
