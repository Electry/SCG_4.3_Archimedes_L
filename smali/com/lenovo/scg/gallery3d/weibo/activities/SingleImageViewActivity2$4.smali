.class Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$4;
.super Ljava/lang/Object;
.source "SingleImageViewActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->setWeiboInf(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

.field final synthetic val$item:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$4;->val$item:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 781
    const-string/jumbo v0, "panhui4_SingleImageViewActivity2"

    const-string/jumbo v1, "onClick, matchWidthImageView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_weibo_sina_singleimage"

    const-string v2, "action_weibo_sina_singleimage_click_image"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 786
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$4;->val$item:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->jumpToShowBigPicPage(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$500(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 787
    return-void
.end method
