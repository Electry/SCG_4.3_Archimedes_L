.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;
.super Landroid/os/Handler;
.source "WeiboList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
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

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V
    .locals 1

    .prologue
    .line 1620
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1624
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;->mCountNew:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$1;

    .prologue
    .line 1620
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v5, 0x7f100a1a

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1633
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1634
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1682
    :goto_0
    return-void

    .line 1636
    :pswitch_0
    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;->mCountNew:I

    .line 1637
    .local v1, "nNewCnt":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWeiboLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1639
    .local v3, "tvHint":Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 1640
    .local v2, "sHint":Ljava/lang/String;
    if-lez v1, :cond_0

    .line 1641
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0713

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1645
    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1646
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1647
    const v4, 0x720093d0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1649
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f050051

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1651
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1653
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandlerTips:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;

    move-result-object v4

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v8, v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1643
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f08e4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1656
    .end local v1    # "nNewCnt":I
    .end local v2    # "sHint":Ljava/lang/String;
    .end local v3    # "tvHint":Landroid/widget/TextView;
    :pswitch_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWeiboLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1659
    .restart local v3    # "tvHint":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f050052

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1660
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1661
    new-instance v4, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler$1;

    invoke-direct {v4, p0, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;Landroid/widget/TextView;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1676
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 1634
    nop

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
    .line 1627
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;->mCountNew:I

    .line 1628
    return-void
.end method
