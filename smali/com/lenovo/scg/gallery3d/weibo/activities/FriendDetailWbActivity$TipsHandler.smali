.class Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler;
.super Landroid/os/Handler;
.source "FriendDetailWbActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TipsHandler"
.end annotation


# static fields
.field public static final MSG_TIPS_HIDE:I = 0x1

.field public static final MSG_TIPS_SHOW:I


# instance fields
.field private mCountNew:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)V
    .locals 1

    .prologue
    .line 679
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 683
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler;->mCountNew:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$1;

    .prologue
    .line 679
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v6, 0x7f100a1a

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 693
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 695
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    .line 697
    .local v1, "context":Landroid/content/Context;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 745
    :goto_0
    return-void

    .line 699
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 700
    .local v2, "nNewCnt":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mRlWbLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$1200(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 702
    .local v4, "tvHint":Landroid/widget/TextView;
    const/4 v3, 0x0

    .line 703
    .local v3, "sHint":Ljava/lang/String;
    if-lez v2, :cond_0

    .line 704
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0713

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 709
    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 711
    const v5, 0x720093d0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 713
    const v5, 0x7f050051

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 715
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 717
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mHandlerTips:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$900(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler;

    move-result-object v5

    const-wide/16 v6, 0xbb8

    invoke-virtual {v5, v9, v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 706
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f08e4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 720
    .end local v2    # "nNewCnt":I
    .end local v3    # "sHint":Ljava/lang/String;
    .end local v4    # "tvHint":Landroid/widget/TextView;
    :pswitch_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mRlWbLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$1200(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 722
    .restart local v4    # "tvHint":Landroid/widget/TextView;
    const v5, 0x7f050052

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 723
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v9}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 724
    new-instance v5, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler$1;

    invoke-direct {v5, p0, v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler;Landroid/widget/TextView;)V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 739
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 697
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "nNewCnt"    # I

    .prologue
    .line 686
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler;->mCountNew:I

    .line 687
    return-void
.end method
