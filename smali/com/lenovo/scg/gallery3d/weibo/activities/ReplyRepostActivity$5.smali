.class Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$5;
.super Ljava/lang/Object;
.source "ReplyRepostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->access$500(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 310
    return-void
.end method
