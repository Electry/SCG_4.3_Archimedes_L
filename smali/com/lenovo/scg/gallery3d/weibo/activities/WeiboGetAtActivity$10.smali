.class Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;
.super Ljava/lang/Object;
.source "WeiboGetAtActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 332
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 329
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 285
    if-nez p4, :cond_2

    if-nez p2, :cond_2

    .line 286
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 287
    sget-object v4, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$13;->$SwitchMap$com$lenovo$scg$gallery3d$sharecenter$RecentlyAtUsersManager$WeiboPlatform:[I

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mCurrentPlatform:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$1300(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 299
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->setDataCollection(Ljava/util/LinkedList;)V

    .line 300
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$400(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setListRefreshAble(Z)V

    .line 301
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSearchResultList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$1100(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 302
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSearchResultList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$1100(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 303
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSearchResultList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$1100(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 324
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->notifyDataSetChanged()V

    .line 325
    return-void

    .line 289
    :pswitch_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 290
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 294
    :pswitch_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$600(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 295
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$600(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 306
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSearchResultList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$1100(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 307
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSearchResultList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$1100(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 308
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    const/4 v5, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSearchResultList:Ljava/util/LinkedList;
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$1102(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 310
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSearchResultList:Ljava/util/LinkedList;
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$1102(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 311
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->isInValid(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$1400(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 312
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 313
    .local v3, "pattern":Ljava/util/regex/Pattern;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;

    .line 314
    .local v0, "baseWeiboUser":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->getScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 315
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 316
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSearchResultList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$1100(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 320
    .end local v0    # "baseWeiboUser":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "pattern":Ljava/util/regex/Pattern;
    :cond_5
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSearchResultList:Ljava/util/LinkedList;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$1100(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->setDataCollection(Ljava/util/LinkedList;)V

    .line 321
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$400(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setListRefreshAble(Z)V

    .line 322
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$400(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->searchResultAtListClick:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$1500(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_1

    .line 287
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
