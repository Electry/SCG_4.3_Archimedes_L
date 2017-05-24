.class Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$1;
.super Landroid/os/Handler;
.source "BoxControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 132
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 133
    return-void

    .line 107
    :pswitch_0
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mIsContainCameraCatalogue:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mIsContinuousCatalogue:Z

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRequestType:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$000(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 109
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mIsShowDividedView:Z

    .line 110
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicsGrid:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$100(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 119
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAlbumListAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/CataloguePicListAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$600(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Lcom/lenovo/scg/gallery3d/boxcontrol/CataloguePicListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAlbumListAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/CataloguePicListAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$600(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Lcom/lenovo/scg/gallery3d/boxcontrol/CataloguePicListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/CataloguePicListAdapter;->notifyDataSetChanged()V

    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mCataloguePicsList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$700(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicsGrid:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$100(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Landroid/widget/GridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicsGrid:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$100(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$200(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$200(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->notifyDataSetChanged()V

    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicsGrid:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$100(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->invalidate()V

    goto :goto_0

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRequestType:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$000(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)I

    move-result v0

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$200(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$200(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->getImagesListCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicsGrid:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$100(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mCameraBgIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$300(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicsGrid:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$100(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mLeftPadding:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$400(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mTopPadding:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$500(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mLeftPadding:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$400(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)I

    move-result v3

    neg-int v3, v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mTopPadding:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$500(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/GridView;->setPadding(IIII)V

    goto/16 :goto_1

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0xfa
        :pswitch_0
    .end packed-switch
.end method
