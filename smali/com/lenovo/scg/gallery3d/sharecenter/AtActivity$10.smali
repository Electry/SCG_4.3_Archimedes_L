.class Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;
.super Ljava/lang/Object;
.source "AtActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 386
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 382
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 341
    if-nez p4, :cond_2

    if-nez p2, :cond_2

    .line 342
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 343
    sget-object v4, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$13;->$SwitchMap$com$lenovo$scg$gallery3d$sharecenter$RecentlyAtUsersManager$WeiboPlatform:[I

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mCurrentPlatform:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$1500(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 357
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$300(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->setDataCollection(Ljava/util/LinkedList;)V

    .line 358
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setListRefreshAble(Z)V

    .line 377
    :goto_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$300(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->notifyDataSetChanged()V

    .line 378
    return-void

    .line 345
    :pswitch_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 346
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 348
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->sinaAttentionListClick:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$1600(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 351
    :pswitch_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$800(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 352
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$800(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 354
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->tencentAttentionListClick:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$1700(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 360
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    # setter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSearchResultList:Ljava/util/LinkedList;
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$1302(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 361
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->isInValid(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$1800(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 362
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 363
    .local v3, "pattern":Ljava/util/regex/Pattern;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;

    .line 364
    .local v0, "baseWeiboUser":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->getScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 365
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 366
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSearchResultList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$1300(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 370
    .end local v0    # "baseWeiboUser":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "pattern":Ljava/util/regex/Pattern;
    :cond_4
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 371
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSearchResultList:Ljava/util/LinkedList;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$1300(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 372
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$300(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->setDataCollection(Ljava/util/LinkedList;)V

    .line 374
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setListRefreshAble(Z)V

    .line 375
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->searchResultAtListClick:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$1900(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_1

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
