.class public Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;
.super Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity;
.source "ReplyRepostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity$OnEditTextContentChangeListener;
.implements Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils$OnCommentSendFinishListener;
.implements Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils$OnRepostSendFinishListener;


# static fields
.field private static final DEBUG_TAG:Ljava/lang/String; = "update_count"

.field public static final RESULT_CODE:I = 0x20001

.field private static final SOFT_KEY_BOARD_CHANGE:I = 0x100

.field public static final WEIBO_DATA_ITEM:Ljava/lang/String; = "weibo_data_item"

.field public static final WEIBO_DRAFT_CHECK_FLAG:Ljava/lang/String; = "draft_check_flag"

.field public static final WEIBO_DRAFT_CONTENT:Ljava/lang/String; = "draft_content"

.field public static final WEIBO_FROME_REPOST_ITEM:Ljava/lang/String; = "weibo_repost_item"

.field public static final WEIBO_ISREPLY:Ljava/lang/String; = "weibo_isreply"

.field public static final WEIBO_IS_FROM_DRAFT:Ljava/lang/String; = "from_draft"

.field public static final WEIBO_SCREEN_NAME:Ljava/lang/String; = "screen_name"

.field public static final WEIBO_UID:Ljava/lang/String; = "weibo_uid"

.field public static mContext:Landroid/content/Context;

.field public static mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

.field public static mWeiboUid:J


# instance fields
.field private bootmActionBar:I

.field private fromListViewDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

.field private image_top_views:Landroid/widget/RelativeLayout;

.field private isFromeRepostItem:Z

.field private isReply:Z

.field private keyboardisshow:Z

.field private len:I

.field private location:I

.field private mATButton:Landroid/widget/ImageButton;

.field private mActionTitle:Landroid/widget/TextView;

.field private mBackButton:Landroid/widget/ImageButton;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCommentID:J

.field private mCounterTextView:Landroid/widget/TextView;

.field private mHuaTiButton:Landroid/widget/ImageButton;

.field private mIntent:Landroid/content/Intent;

.field private mRepostEditText:Landroid/widget/EditText;

.field private mRepstButton:Landroid/widget/Button;

.field private mResizeView:Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView;

.field private mScreenName:Ljava/lang/String;

.field private mSmileAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter;

.field private mSmileButton:Landroid/widget/ImageButton;

.field private mSmileGridView:Landroid/widget/GridView;

.field private mSmileLayout:Landroid/widget/RelativeLayout;

.field private weibo_wdy_bottom_action_bar:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 90
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mWeiboUid:J

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity;-><init>()V

    .line 88
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->isFromeRepostItem:Z

    .line 89
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->isReply:Z

    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mCommentID:J

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mScreenName:Ljava/lang/String;

    .line 101
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->keyboardisshow:Z

    .line 105
    iput v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->bootmActionBar:I

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    .prologue
    .line 61
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->len:I

    return v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->len:I

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    .prologue
    .line 61
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->location:I

    return v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->location:I

    return p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    .prologue
    .line 61
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->bootmActionBar:I

    return v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->bootmActionBar:I

    return p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mResizeView:Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileButton:Landroid/widget/ImageButton;

    return-object v0
.end method


# virtual methods
.method public OnContentChanged(I)V
    .locals 2
    .param p1, "canInputBumber"    # I

    .prologue
    .line 626
    if-gez p1, :cond_0

    .line 627
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mCounterTextView:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 631
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mCounterTextView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    return-void

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mCounterTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 387
    invoke-super {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 388
    const/16 v2, 0x1001

    if-ne p1, v2, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 390
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "commString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "sina_at_info"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "newContent":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 396
    const-string/jumbo v2, "wangdiyuan get_at_list"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "sina_at_info"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .end local v0    # "commString":Ljava/lang/String;
    .end local v1    # "newContent":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileButton:Landroid/widget/ImageButton;

    const v1, 0x7f020a0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 622
    :goto_0
    return-void

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 24
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 456
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 459
    :sswitch_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v3

    const-string v6, "category_weibo_sina_commentrepostpage"

    const-string v7, "action_weibo_sina_commentrepostpage_click_return_btn"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 464
    sget-object v3, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    if-eqz v3, :cond_1

    .line 465
    sget-object v3, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->prepareImage()V

    .line 467
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 468
    const v3, 0x7f0f08be

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->saveDraft()V

    .line 472
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->finish()V

    goto :goto_0

    .line 478
    :sswitch_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v3

    const-string v6, "category_weibo_sina_commentrepostpage"

    const-string v7, "action_weibo_sina_commentrepostpage_click_send_btn"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 483
    invoke-static/range {p0 .. p0}, Lcom/lenovo/scg/common/utils/SCGUtils;->checkNetWorkIsAvaliable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 484
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->isReply:Z

    if-eqz v3, :cond_4

    .line 487
    new-instance v2, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;

    sget-wide v4, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mWeiboUid:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mCommentID:J

    const/16 v8, 0x101

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;-><init>(Landroid/app/Activity;JJI)V

    .line 488
    .local v2, "mCommentUtils":Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->setOnCommentSendFinishListener(Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils$OnCommentSendFinishListener;)V

    .line 490
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 491
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 492
    new-instance v4, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;

    sget-wide v6, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mWeiboUid:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mCommentID:J

    const/16 v10, 0x100

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;-><init>(Landroid/app/Activity;JJI)V

    .line 493
    .local v4, "mRepostUtils":Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->setOnRepostSendFinishListener(Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils$OnRepostSendFinishListener;)V

    .line 495
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-virtual {v4, v3}, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 498
    .end local v4    # "mRepostUtils":Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->finish()V

    goto/16 :goto_0

    .line 502
    .end local v2    # "mCommentUtils":Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;
    :cond_4
    new-instance v4, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;

    sget-wide v6, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mWeiboUid:J

    const-wide/16 v8, -0x1

    const/16 v10, 0x100

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;-><init>(Landroid/app/Activity;JJI)V

    .line 503
    .restart local v4    # "mRepostUtils":Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->setOnRepostSendFinishListener(Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils$OnRepostSendFinishListener;)V

    .line 505
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-virtual {v4, v3}, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 507
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 508
    new-instance v2, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;

    sget-wide v8, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mWeiboUid:J

    const-wide/16 v10, -0x1

    const/16 v12, 0x101

    move-object v6, v2

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;-><init>(Landroid/app/Activity;JJI)V

    .line 509
    .restart local v2    # "mCommentUtils":Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->setOnCommentSendFinishListener(Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils$OnCommentSendFinishListener;)V

    .line 511
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 513
    .end local v2    # "mCommentUtils":Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->finish()V

    goto/16 :goto_0

    .line 523
    .end local v4    # "mRepostUtils":Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;
    :sswitch_2
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v3

    const-string v6, "category_weibo_sina_commentrepostpage"

    const-string v7, "action_weibo_sina_commentrepostpage_click_topic_btn"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 528
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 529
    .local v14, "content":Ljava/lang/String;
    if-nez v14, :cond_6

    .line 530
    const-string v14, ""

    .line 533
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v22

    .line 534
    .local v22, "selection":I
    const-string/jumbo v3, "wangdiyuan getselection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "selection is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 537
    .local v18, "mBuilder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 539
    .local v16, "head":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 541
    .local v23, "tail":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "##"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 543
    .local v21, "newContent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;

    add-int/lit8 v6, v22, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    .line 551
    .end local v14    # "content":Ljava/lang/String;
    .end local v16    # "head":Ljava/lang/String;
    .end local v18    # "mBuilder":Ljava/lang/StringBuilder;
    .end local v21    # "newContent":Ljava/lang/String;
    .end local v22    # "selection":I
    .end local v23    # "tail":Ljava/lang/String;
    :sswitch_3
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v3

    const-string v6, "category_weibo_sina_commentrepostpage"

    const-string v7, "action_weibo_sina_commentrepostpage_click_friends_btn"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 556
    new-instance v15, Landroid/content/Intent;

    const-class v3, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 557
    .local v15, "getAtIntent":Landroid/content/Intent;
    const/16 v3, 0x1001

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 563
    .end local v15    # "getAtIntent":Landroid/content/Intent;
    :sswitch_4
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v3

    const-string v6, "category_weibo_sina_commentrepostpage"

    const-string v7, "action_weibo_sina_commentrepostpage_click_icon_btn"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 568
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mResizeView:Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView;->getBottom()I

    move-result v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->bootmActionBar:I

    if-ne v3, v6, :cond_7

    .line 570
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileLayout:Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 571
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileButton:Landroid/widget/ImageButton;

    const v6, 0x7f020a0e

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 591
    :goto_1
    new-instance v19, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 592
    .local v19, "mSet":Landroid/view/animation/AnimationSet;
    const-wide/16 v6, 0x64

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 593
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/high16 v11, 0x41200000    # 10.0f

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 595
    .local v5, "mTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 597
    new-instance v17, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 599
    .local v17, "mAlphaAnimation":Landroid/view/animation/AlphaAnimation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 600
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->weibo_wdy_bottom_action_bar:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 573
    .end local v5    # "mTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v17    # "mAlphaAnimation":Landroid/view/animation/AlphaAnimation;
    .end local v19    # "mSet":Landroid/view/animation/AnimationSet;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_8

    .line 574
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileLayout:Landroid/widget/RelativeLayout;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 575
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileButton:Landroid/widget/ImageButton;

    const v6, 0x7f020a0f

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 581
    :goto_2
    const-string v3, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/inputmethod/InputMethodManager;

    .line 583
    .local v20, "manager":Landroid/view/inputmethod/InputMethodManager;
    const-string/jumbo v3, "wangdiyuan"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mResizeView:Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView;->getBottom()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u524d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 v3, 0x0

    const/4 v6, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v6}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 585
    const-string/jumbo v3, "wangdiyuan"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mResizeView:Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView;->getBottom()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u540e"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const-string/jumbo v3, "wangdiyuan"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v20 .. v20}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u6253\u5f00\u4e0e\u5426"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 577
    .end local v20    # "manager":Landroid/view/inputmethod/InputMethodManager;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileLayout:Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 578
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileButton:Landroid/widget/ImageButton;

    const v6, 0x7f020a0e

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_2

    .line 456
    :sswitch_data_0
    .sparse-switch
        0x7f10082a -> :sswitch_0
        0x7f10082b -> :sswitch_1
        0x7f100833 -> :sswitch_2
        0x7f100834 -> :sswitch_4
        0x7f100835 -> :sswitch_3
    .end sparse-switch
.end method

.method public onConnmentSendFinish(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 669
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 670
    .local v2, "gson":Lcom/google/gson/Gson;
    const/4 v4, 0x0

    .line 672
    .local v4, "response":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;
    :try_start_0
    const-class v5, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;

    invoke-virtual {v2, p1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :goto_0
    if-eqz v4, :cond_0

    .line 682
    const-string/jumbo v5, "update_count"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onConnmentSendFinish()  comment_count is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->getStatus()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getComments_count()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 684
    .local v3, "message":Landroid/os/Message;
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 685
    const v5, 0x9002

    iput v5, v3, Landroid/os/Message;->what:I

    .line 686
    sget-object v5, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->UPDATE_LIST:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 689
    .end local v3    # "message":Landroid/os/Message;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 690
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->saveDraft()V

    .line 692
    :cond_1
    return-void

    .line 673
    :catch_0
    move-exception v1

    .line 674
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v9

    const-string v10, "category_weibo_sina_commentrepostpage"

    const-string v11, "action_weibo_sina_commentrepostpage_oncreate"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 128
    const v9, 0x7f04015f

    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->setContentView(I)V

    .line 130
    sput-object p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mContext:Landroid/content/Context;

    .line 132
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/SCGUtils;->initSCGTypeface(Landroid/content/Context;)V

    .line 133
    const v9, 0x7f100829

    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    invoke-static {v9}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 134
    const v9, 0x7f100832

    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mCounterTextView:Landroid/widget/TextView;

    .line 136
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mIntent:Landroid/content/Intent;

    .line 137
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v10, "weibo_uid"

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    sput-wide v10, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mWeiboUid:J

    .line 139
    sget-wide v10, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mWeiboUid:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_0

    .line 140
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mIntent:Landroid/content/Intent;

    const-string v10, "id"

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    sput-wide v10, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mWeiboUid:J

    .line 143
    :cond_0
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mIntent:Landroid/content/Intent;

    const-string v10, "cid"

    const-wide/16 v12, -0x1

    invoke-virtual {v9, v10, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mCommentID:J

    .line 145
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v10, "weibo_isreply"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->isReply:Z

    .line 147
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v10, "weibo_repost_item"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->isFromeRepostItem:Z

    .line 149
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v10, "weibo_data_item"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->fromListViewDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 150
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v10, "screen_name"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mScreenName:Ljava/lang/String;

    .line 151
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mIntent:Landroid/content/Intent;

    const-string v10, "from_draft"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 153
    .local v1, "bFromDraft":Z
    const v9, 0x7f10076d

    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->image_top_views:Landroid/widget/RelativeLayout;

    .line 154
    const v9, 0x7f10082f

    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->weibo_wdy_bottom_action_bar:Landroid/widget/RelativeLayout;

    .line 156
    const v9, 0x7f10082c

    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mActionTitle:Landroid/widget/TextView;

    .line 157
    const v9, 0x7f100830

    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mCheckBox:Landroid/widget/CheckBox;

    .line 159
    iget-boolean v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->isReply:Z

    if-eqz v9, :cond_3

    .line 161
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mActionTitle:Landroid/widget/TextView;

    const v10, 0x7f0f08d6

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 162
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mCheckBox:Landroid/widget/CheckBox;

    const v10, 0x7f0f08d3

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setText(I)V

    .line 169
    :goto_0
    const v9, 0x7f100836

    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView;

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mResizeView:Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView;

    .line 171
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mResizeView:Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView;

    new-instance v10, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$1;

    invoke-direct {v10, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)V

    invoke-virtual {v9, v10}, Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView;->setOnSoftKeyBoardChangeListner(Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView$OnSoftKeyBoardVisibleChangeListner;)V

    .line 185
    const v9, 0x7f10082d

    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileLayout:Landroid/widget/RelativeLayout;

    .line 186
    const v9, 0x7f10082e

    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/GridView;

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileGridView:Landroid/widget/GridView;

    .line 188
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileGridView:Landroid/widget/GridView;

    new-instance v10, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$2;

    invoke-direct {v10, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$2;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 211
    new-instance v9, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter;

    invoke-direct {v9, p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter;

    .line 212
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileGridView:Landroid/widget/GridView;

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter;

    invoke-virtual {v9, v10}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 214
    const v9, 0x7f10082a

    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mBackButton:Landroid/widget/ImageButton;

    .line 215
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v9, 0x7f10082b

    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepstButton:Landroid/widget/Button;

    .line 218
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepstButton:Landroid/widget/Button;

    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    const v9, 0x7f100837

    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;

    .line 224
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;

    new-instance v10, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$3;

    invoke-direct {v10, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$3;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 267
    if-eqz v1, :cond_1

    .line 268
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mIntent:Landroid/content/Intent;

    const-string v11, "draft_content"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :cond_1
    const v9, 0x7f100833

    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mHuaTiButton:Landroid/widget/ImageButton;

    .line 271
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mHuaTiButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    const v9, 0x7f100835

    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mATButton:Landroid/widget/ImageButton;

    .line 274
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mATButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    const v9, 0x7f100834

    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileButton:Landroid/widget/ImageButton;

    .line 277
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mResizeView:Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView;

    new-instance v10, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$4;

    invoke-direct {v10, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$4;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)V

    invoke-virtual {v9, v10}, Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView;->post(Ljava/lang/Runnable;)Z

    .line 304
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;

    new-instance v10, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$5;

    invoke-direct {v10, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$5;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->fromListViewDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    if-eqz v9, :cond_2

    .line 314
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->fromListViewDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrScreenName()Ljava/lang/String;

    move-result-object v8

    .line 315
    .local v8, "name":Ljava/lang/String;
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->fromListViewDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrContent()Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, "content":Ljava/lang/String;
    iget-boolean v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->isFromeRepostItem:Z

    if-eqz v9, :cond_4

    .line 317
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "//@"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 327
    .end local v3    # "content":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSelection(I)V

    .line 329
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 330
    .local v4, "haveInput":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    new-array v5, v9, [C

    .line 331
    .local v5, "haveInputChar":[C
    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v4, v9, v10, v5, v11}, Ljava/lang/String;->getChars(II[CI)V

    .line 333
    const/4 v6, 0x0

    .line 334
    .local v6, "haveInputNumber":I
    const/4 v2, 0x0

    .line 335
    .local v2, "charNumber":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_6

    .line 336
    aget-char v9, v5, v7

    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils;->checkType(C)Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;

    move-result-object v9

    sget-object v10, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;->CHINESE:Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;

    if-ne v9, v10, :cond_5

    .line 338
    add-int/lit8 v2, v2, 0x4

    .line 335
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 165
    .end local v2    # "charNumber":I
    .end local v4    # "haveInput":Ljava/lang/String;
    .end local v5    # "haveInputChar":[C
    .end local v6    # "haveInputNumber":I
    .end local v7    # "i":I
    :cond_3
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mActionTitle:Landroid/widget/TextView;

    const v10, 0x7f0f071e

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 166
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mCheckBox:Landroid/widget/CheckBox;

    const v10, 0x7f0f08d5

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setText(I)V

    goto/16 :goto_0

    .line 319
    .restart local v3    # "content":Ljava/lang/String;
    .restart local v8    # "name":Ljava/lang/String;
    :cond_4
    if-eqz v8, :cond_2

    .line 320
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u56de\u590d@"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 341
    .end local v3    # "content":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .restart local v2    # "charNumber":I
    .restart local v4    # "haveInput":Ljava/lang/String;
    .restart local v5    # "haveInputChar":[C
    .restart local v6    # "haveInputNumber":I
    .restart local v7    # "i":I
    :cond_5
    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    .line 345
    :cond_6
    div-int/lit8 v6, v2, 0x4

    .line 346
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mCounterTextView:Landroid/widget/TextView;

    rsub-int v10, v6, 0x8c

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    invoke-virtual {p0, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->setEditChangeListener(Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity$OnEditTextContentChangeListener;)V

    .line 349
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->setOnEditTextChangeListener(Landroid/widget/EditText;)V

    .line 351
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;

    new-instance v10, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$6;

    invoke-direct {v10, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$6;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 380
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mIntent:Landroid/content/Intent;

    const-string v10, "draft_check_flag"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 381
    .local v0, "bChecked":Z
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v9, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 382
    return-void
.end method

.method public onRepostSendFinish(Ljava/lang/String;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 637
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 638
    .local v3, "gson":Lcom/google/gson/Gson;
    const/4 v6, 0x0

    .line 640
    .local v6, "response":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;
    :try_start_0
    const-class v7, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;

    invoke-virtual {v3, p1, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :goto_0
    if-eqz v6, :cond_0

    .line 652
    const-string/jumbo v7, "update_count"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onRepostSendFinish() repost_count is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->getRetweeted_status()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->getReposts_count()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 654
    .local v5, "message":Landroid/os/Message;
    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 655
    const v7, 0x9001

    iput v7, v5, Landroid/os/Message;->what:I

    .line 656
    sget-object v7, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->UPDATE_LIST:Landroid/os/Handler;

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 661
    .end local v5    # "message":Landroid/os/Message;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 662
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->saveDraft()V

    .line 664
    :cond_1
    return-void

    .line 641
    :catch_0
    move-exception v2

    .line 642
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-DD-HH-mm-ss"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 643
    .local v4, "mFormat":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, "date_time":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wb_LMImage_json_ex_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {p0, v7, v8}, Lcom/lenovo/scg/common/utils/file/CacheUtils;->writeCacheData(Landroid/content/Context;Ljava/lang/String;[B)Ljava/lang/Boolean;

    .line 645
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 697
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity;->onResume()V

    .line 698
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 699
    .local v0, "manager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    const-string/jumbo v1, "shizongyin"

    const-string/jumbo v2, "smilelayout and inputmethod were opened"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 702
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mSmileButton:Landroid/widget/ImageButton;

    const v2, 0x7f020a0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 705
    :cond_0
    return-void
.end method

.method public saveDraft()V
    .locals 12

    .prologue
    .line 416
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 417
    .local v4, "sContent":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 451
    :goto_0
    return-void

    .line 419
    :cond_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 420
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v8, "status_uid"

    sget-wide v10, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mWeiboUid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 421
    const-string v8, "content"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const/4 v0, 0x0

    .line 423
    .local v0, "action":I
    iget-boolean v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->isReply:Z

    if-eqz v8, :cond_3

    .line 424
    const/4 v0, 0x1

    .line 425
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 426
    const/16 v0, 0x65

    .line 434
    :cond_1
    :goto_1
    const-string v8, "action"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 436
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mScreenName:Ljava/lang/String;

    .line 437
    .local v5, "sName":Ljava/lang/String;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->fromListViewDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    if-eqz v8, :cond_2

    .line 438
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->fromListViewDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v5

    .line 440
    :cond_2
    const-string/jumbo v8, "nick"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 442
    .local v2, "lTime":J
    const-string v8, "draft_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 444
    const/4 v6, 0x0

    .line 446
    .local v6, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$WbDraftTb;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 429
    .end local v2    # "lTime":J
    .end local v5    # "sName":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_3
    const/4 v0, 0x0

    .line 430
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 431
    const/16 v0, 0x64

    goto :goto_1

    .line 447
    .restart local v2    # "lTime":J
    .restart local v5    # "sName":Ljava/lang/String;
    .restart local v6    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 448
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "saveDraft, Has exception when insert values to cache db,error: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
