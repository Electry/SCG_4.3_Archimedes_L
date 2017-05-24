.class Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$6;
.super Ljava/lang/Object;
.source "ReplyRepostActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 351
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v3, 0x7f020a0f

    const/16 v2, 0x8

    .line 356
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 357
    const-string v0, "EditText is OnTouched"

    const-string v1, "       true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mResizeView:Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->access$400(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->bootmActionBar:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 360
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->access$500(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->access$600(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 375
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->access$500(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->access$500(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->access$600(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method
