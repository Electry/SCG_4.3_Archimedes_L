.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;
.super Ljava/lang/Object;
.source "WeiboList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V
    .locals 0

    .prologue
    .line 2897
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 2904
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez p2, :cond_1

    .line 2969
    :cond_0
    :goto_0
    return-void

    .line 2906
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/scg/common/utils/SCGUtils;->checkNetWorkIsAvaliable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2909
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mLockGroup:[B
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)[B

    move-result-object v6

    monitor-enter v6

    .line 2911
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mChildViewOld:Landroid/view/View;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3800(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mChildViewOld:Landroid/view/View;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3800(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/view/View;

    move-result-object v5

    if-eq v5, p2, :cond_2

    .line 2915
    :cond_2
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupIndexCur:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)I

    move-result v1

    .line 2916
    .local v1, "nOldIndex":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mChildViewOld:Landroid/view/View;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3800(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/view/View;

    move-result-object v2

    .line 2917
    .local v2, "oldViewSave":Landroid/view/View;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mChildViewOld:Landroid/view/View;
    invoke-static {v5, p2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3802(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Landroid/view/View;)Landroid/view/View;

    .line 2918
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupIndexCur:I
    invoke-static {v5, p3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3902(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;I)I

    .line 2919
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbGroupListener:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 2920
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbGroupListener:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;->onWbGroupSelectChanged()V

    .line 2922
    :cond_3
    const-wide/16 v8, 0x4d2

    cmp-long v5, p4, v8

    if-nez v5, :cond_4

    .line 2923
    monitor-exit v6

    goto :goto_0

    .line 2965
    .end local v1    # "nOldIndex":I
    .end local v2    # "oldViewSave":Landroid/view/View;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2925
    .restart local v1    # "nOldIndex":I
    .restart local v2    # "oldViewSave":Landroid/view/View;
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupMenuView:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/view/ViewGroup;

    move-result-object v5

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2928
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mState:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_5

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mState:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_8

    .line 2929
    :cond_5
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0f08e7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2931
    .local v3, "sHint":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/content/Context;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v5, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 2932
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupMenuView:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/view/ViewGroup;

    move-result-object v5

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2935
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupIndexCur:I
    invoke-static {v5, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3902(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;I)I

    .line 2936
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbGroupListener:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 2937
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbGroupListener:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;->onWbGroupSelectChanged()V

    .line 2940
    :cond_6
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mChildViewOld:Landroid/view/View;
    invoke-static {v5, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3802(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Landroid/view/View;)Landroid/view/View;

    .line 2941
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mChildViewOld:Landroid/view/View;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3800(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 2945
    :cond_7
    monitor-exit v6

    goto/16 :goto_0

    .line 2947
    .end local v3    # "sHint":Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupIndexCur:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)I

    move-result v5

    if-ne v1, v5, :cond_9

    .line 2948
    monitor-exit v6

    goto/16 :goto_0

    .line 2951
    :cond_9
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    const/4 v7, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsLoadGroupPicList:Z
    invoke-static {v5, v7}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1602(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Z)Z

    .line 2952
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbGroupListener:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 2953
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbGroupListener:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;->onWbGroupPicListGetStart()V

    .line 2956
    :cond_a
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupIndexCur:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)I

    move-result v5

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroups:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-le v5, v7, :cond_b

    .line 2957
    const-string v5, "group index overflow ! index=%d,size=%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupIndexCur:I
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroups:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2965
    :goto_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2966
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->cancelAllTask()V

    .line 2967
    new-instance v4, Ljava/lang/Thread;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mRunnableRefreshGroup:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4200(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2968
    .local v4, "td":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 2961
    .end local v4    # "td":Ljava/lang/Thread;
    :cond_b
    :try_start_2
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroups:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupIndexCur:I
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;

    .line 2962
    .local v0, "gInfo":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;
    const-string/jumbo v5, "select group id=%d name=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupIndexCur:I
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
