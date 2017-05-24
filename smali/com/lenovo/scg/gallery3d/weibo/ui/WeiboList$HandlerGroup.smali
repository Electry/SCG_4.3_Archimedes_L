.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;
.super Landroid/os/Handler;
.source "WeiboList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerGroup"
.end annotation


# static fields
.field public static final MSG_GET_GROUP_DONE:I = 0x0

.field public static final MSG_HILIGHT_CURRENT:I = 0x4

.field public static final MSG_HILIGHT_FIRST:I = 0x1

.field public static final MSG_UPDATE_GROUP_LIST:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V
    .locals 0

    .prologue
    .line 3168
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$1;

    .prologue
    .line 3168
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0x4d2

    const-wide/16 v4, 0xa

    const/4 v3, 0x0

    .line 3178
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 3180
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 3213
    :goto_0
    :pswitch_0
    return-void

    .line 3182
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 3184
    .local v0, "arrGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;>;"
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupMenuView:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3186
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbGroupAdapter:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;->setGroupItems(Ljava/util/ArrayList;)V

    .line 3187
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbGroupAdapter:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;->notifyDataSetChanged()V

    .line 3189
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbGroupListener:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3190
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbGroupListener:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupMenuView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;->onWbGroupGetFinished(Ljava/lang/Object;)V

    .line 3192
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandlerGroup:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3196
    .end local v0    # "arrGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;>;"
    :pswitch_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mLvWeiboGroup:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$5000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3197
    .local v1, "vChild":Landroid/view/View;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mLvWeiboGroup:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$5000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1, v3, v6, v7}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0

    .line 3201
    .end local v1    # "vChild":Landroid/view/View;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 3202
    .restart local v0    # "arrGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;>;"
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbGroupAdapter:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;->setGroupItems(Ljava/util/ArrayList;)V

    .line 3203
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbGroupAdapter:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;->notifyDataSetChanged()V

    .line 3204
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandlerGroup:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3208
    .end local v0    # "arrGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;>;"
    :pswitch_4
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mLvWeiboGroup:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$5000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupIndexCur:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3209
    .restart local v1    # "vChild":Landroid/view/View;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mLvWeiboGroup:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$5000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupIndexCur:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)I

    move-result v3

    invoke-virtual {v2, v1, v3, v6, v7}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    goto/16 :goto_0

    .line 3180
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
