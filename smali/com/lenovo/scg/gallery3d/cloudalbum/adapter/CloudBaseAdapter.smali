.class public abstract Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "CloudBaseAdapter.java"


# instance fields
.field protected mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

.field protected mContext:Landroid/content/Context;

.field protected mInflate:Landroid/view/LayoutInflater;

.field protected mIsSyncFinishedFlag:Z

.field protected mOptions:Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    .line 17
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;->mContext:Landroid/content/Context;

    .line 19
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;->mInflate:Landroid/view/LayoutInflater;

    .line 21
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;->mOptions:Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;->mIsSyncFinishedFlag:Z

    .line 26
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    .line 27
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;->mInflate:Landroid/view/LayoutInflater;

    .line 29
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;->mContext:Landroid/content/Context;

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->initImageLoader(Landroid/content/Context;)V

    .line 33
    return-void
.end method


# virtual methods
.method public abstract setDataList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation
.end method

.method public setSyncFinishedFlag(Z)V
    .locals 0
    .param p1, "syncFinishFlag"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;->mIsSyncFinishedFlag:Z

    .line 40
    return-void
.end method

.method protected throwErrorInfo(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 36
    return-void
.end method
