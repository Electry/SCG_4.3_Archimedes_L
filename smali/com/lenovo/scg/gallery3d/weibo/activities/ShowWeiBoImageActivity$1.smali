.class Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity$1;
.super Ljava/lang/Object;
.source "ShowWeiBoImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->image_top_views:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->image_top_views:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->image_top_views:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
