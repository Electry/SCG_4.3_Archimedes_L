.class Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$HandlerDraft;
.super Landroid/os/Handler;
.source "WbDraft.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerDraft"
.end annotation


# static fields
.field public static final MSG_UPDATE_LIST:I


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$HandlerDraft;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$1;

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$HandlerDraft;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 360
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 361
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 380
    :goto_0
    return-void

    .line 363
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$HandlerDraft;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->access$600(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$HandlerDraft;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDraftItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->setItemArr(Ljava/util/ArrayList;)V

    .line 364
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$HandlerDraft;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->access$600(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->notifyDataSetChanged()V

    .line 366
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$HandlerDraft;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDraftItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$HandlerDraft;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mRlEmpty:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->access$700(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$HandlerDraft;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mLvDraft:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->access$800(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$HandlerDraft;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mRlEmpty:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->access$700(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$HandlerDraft;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mLvDraft:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->access$800(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
