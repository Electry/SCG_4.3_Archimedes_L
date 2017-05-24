.class public Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;
.super Ljava/lang/Object;
.source "PhotoEditFrame.java"


# static fields
.field private static final ANIMATION_TIME:I = 0xc8

.field private static final PACKAGE_NAME_ANYSHARE:Ljava/lang/String; = "com.lenovo.anyshare"

.field private static final PACKAGE_NAME_MMS_1:Ljava/lang/String; = "com.lenovo.ideafriend"

.field private static final PACKAGE_NAME_MMS_2:Ljava/lang/String; = "com.android.mms"

.field private static final PACKAGE_NAME_WEIBO:Ljava/lang/String; = "com.sina.weibo"

.field private static final PACKAGE_NAME_WEIXIN:Ljava/lang/String; = "com.tencent.mm"

.field private static final TAG:Ljava/lang/String; = "PhotoEditFrame"

.field private static mShowSharePopupWindowOrientation:Z


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDeleteText:Landroid/widget/TextView;

.field private mDeleteView:Landroid/widget/ImageView;

.field private mDeleteViews:Landroid/widget/LinearLayout;

.field private mEditBar:Landroid/widget/RelativeLayout;

.field private mEditText:Landroid/widget/TextView;

.field private mEditView:Landroid/widget/ImageView;

.field private mEditViews:Landroid/widget/LinearLayout;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsFakeHorizontal:Z

.field private mMoreButton:Landroid/widget/ImageView;

.field private mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

.field private mPhotoNameView:Landroid/widget/TextView;

.field private mRootView:Landroid/view/View;

.field private mRotateText:Landroid/widget/TextView;

.field private mRotateView:Landroid/widget/ImageView;

.field private mRotateViews:Landroid/widget/LinearLayout;

.field private mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

.field private mShareLayout:Landroid/view/View;

.field private mShareMMSLL:Landroid/widget/LinearLayout;

.field private mSharePopWindow:Landroid/widget/PopupWindow;

.field private mShareText:Landroid/widget/TextView;

.field private mShareToCancel:Landroid/widget/LinearLayout;

.field private mShareToFriendCircleLL:Landroid/widget/LinearLayout;

.field private mShareToMoreIsShown:Z

.field private mShareToMoreLL:Landroid/widget/LinearLayout;

.field private mShareToQieziLL:Landroid/widget/RelativeLayout;

.field private mShareToWeiBoLL:Landroid/widget/LinearLayout;

.field private mShareToWeiXinLL:Landroid/widget/LinearLayout;

.field private mShareUri:Landroid/net/Uri;

.field private mShareView:Landroid/widget/ImageView;

.field private mShareViews:Landroid/widget/LinearLayout;

.field private mShareclickListener:Landroid/view/View$OnClickListener;

.field private mShearText:Landroid/widget/TextView;

.field private mShearView:Landroid/widget/ImageView;

.field private mShearViews:Landroid/widget/LinearLayout;

.field private mTopViews:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1023
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShowSharePopupWindowOrientation:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "photoEditorActionBar"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;-><init>(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->clickListener:Landroid/view/View$OnClickListener;

    .line 779
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$6;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$6;-><init>(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareclickListener:Landroid/view/View$OnClickListener;

    .line 990
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareToMoreIsShown:Z

    .line 104
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRootView:Landroid/view/View;

    .line 106
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    .line 107
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->initEditViews()V

    .line 108
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->initSharePopupWindow()V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mEditViews:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mDeleteViews:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mMoreButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mEditBar:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mTopViews:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mIsFakeHorizontal:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->shareToQiezi()V

    return-void
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->shareToMMS()V

    return-void
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->shareToWeiXin()V

    return-void
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->shareToWeibo()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->shareToFriendcircle()V

    return-void
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->shareToMore()V

    return-void
.end method

.method static synthetic access$2200(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->dismissPopupWindow()V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->startTopViewsOutAnim()V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShearViews:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRotateViews:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareViews:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->showSharePopupWindow(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Lcom/lenovo/scg/gallery3d/edit/RotateDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    return-object v0
.end method

.method static synthetic access$802(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;Lcom/lenovo/scg/gallery3d/edit/RotateDialog;)Lcom/lenovo/scg/gallery3d/edit/RotateDialog;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    return-object p1
.end method

.method static synthetic access$902(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareToMoreIsShown:Z

    return p1
.end method

.method private dismissPopupWindow()V
    .locals 2

    .prologue
    .line 773
    const-string v0, "PhotoEditFrame"

    const-string v1, "kbg374, dismissPopupWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mSharePopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mSharePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 777
    :cond_0
    return-void
.end method

.method private getMediaType()Ljava/lang/String;
    .locals 7

    .prologue
    .line 812
    const-string v2, "image/*"

    .line 814
    .local v2, "type":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    .line 815
    .local v1, "mediaItem":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v1, :cond_0

    .line 816
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getMediaType()I

    move-result v3

    .line 817
    .local v3, "typeValue":I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v2

    .line 818
    const-string v4, "PhotoEditFrame"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current mediaType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    .end local v1    # "mediaItem":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .end local v3    # "typeValue":I
    :cond_0
    :goto_0
    return-object v2

    .line 820
    :catch_0
    move-exception v0

    .line 821
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "PhotoEditFrame"

    const-string v5, "getMediaType exception "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initEditViews()V
    .locals 5

    .prologue
    const v4, 0x7f10077d

    const/16 v3, 0x8

    .line 112
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRootView:Landroid/view/View;

    const v2, 0x7f100773

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mEditBar:Landroid/widget/RelativeLayout;

    .line 113
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mEditBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 114
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRootView:Landroid/view/View;

    const v2, 0x7f100774

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mEditViews:Landroid/widget/LinearLayout;

    .line 115
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareViews:Landroid/widget/LinearLayout;

    .line 116
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRootView:Landroid/view/View;

    const v2, 0x7f100780

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mDeleteViews:Landroid/widget/LinearLayout;

    .line 117
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRootView:Landroid/view/View;

    const v2, 0x7f10076d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mTopViews:Landroid/widget/RelativeLayout;

    .line 118
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mTopViews:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mTopViews:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRootView:Landroid/view/View;

    const v2, 0x7f100770

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoNameView:Landroid/widget/TextView;

    .line 122
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoNameView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getMediaItemName()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "name":Ljava/lang/String;
    const-string v1, "PhotoEditFrame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initEditViews, name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoNameView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoNameView:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 128
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRootView:Landroid/view/View;

    const v2, 0x7f100772

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mMoreButton:Landroid/widget/ImageView;

    .line 129
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRootView:Landroid/view/View;

    const v2, 0x7f10076e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mImageView:Landroid/widget/ImageView;

    .line 131
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mEditViews:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mDeleteViews:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mMoreButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRootView:Landroid/view/View;

    const v2, 0x7f10077a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRotateViews:Landroid/widget/LinearLayout;

    .line 136
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRotateViews:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRootView:Landroid/view/View;

    const v2, 0x7f100777

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShearViews:Landroid/widget/LinearLayout;

    .line 138
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShearViews:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareViews:Landroid/widget/LinearLayout;

    .line 140
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareViews:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRootView:Landroid/view/View;

    const v2, 0x7f100775

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mEditView:Landroid/widget/ImageView;

    .line 145
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRootView:Landroid/view/View;

    const v2, 0x7f100778

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShearView:Landroid/widget/ImageView;

    .line 146
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRootView:Landroid/view/View;

    const v2, 0x7f10077b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRotateView:Landroid/widget/ImageView;

    .line 147
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRootView:Landroid/view/View;

    const v2, 0x7f100781

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mDeleteView:Landroid/widget/ImageView;

    .line 148
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRootView:Landroid/view/View;

    const v2, 0x7f10077e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareView:Landroid/widget/ImageView;

    .line 149
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRootView:Landroid/view/View;

    const v2, 0x7f100776

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mEditText:Landroid/widget/TextView;

    .line 150
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRootView:Landroid/view/View;

    const v2, 0x7f100779

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShearText:Landroid/widget/TextView;

    .line 151
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRootView:Landroid/view/View;

    const v2, 0x7f10077c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRotateText:Landroid/widget/TextView;

    .line 152
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRootView:Landroid/view/View;

    const v2, 0x7f100782

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mDeleteText:Landroid/widget/TextView;

    .line 153
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRootView:Landroid/view/View;

    const v2, 0x7f10077f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareText:Landroid/widget/TextView;

    .line 154
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->updateViews()V

    .line 155
    return-void
.end method

.method private initSharePopupWindow()V
    .locals 20

    .prologue
    .line 645
    const-string v17, "PhotoEditFrame"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "kbg374, initSharePopupWindow, fake:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isFakeHorizontal()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const-string v17, "PhotoEditFrame"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "kbg374, initSharePopupWindow, orientation:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getCurrentOrientation()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 649
    .local v4, "dm":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getActivity()Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 650
    iget v13, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 651
    .local v13, "screenWidth":I
    iget v12, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 653
    .local v12, "screenHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 655
    .local v6, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isFakeHorizontal()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 656
    const v17, 0x7f040012

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareLayout:Landroid/view/View;

    .line 660
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareLayout:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f100084

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareToQieziLL:Landroid/widget/RelativeLayout;

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareToQieziLL:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareclickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareLayout:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f10008f

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareMMSLL:Landroid/widget/LinearLayout;

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareMMSLL:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareclickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareLayout:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f100089

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareToWeiXinLL:Landroid/widget/LinearLayout;

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareToWeiXinLL:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareclickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareLayout:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f10008d

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareToWeiBoLL:Landroid/widget/LinearLayout;

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareToWeiBoLL:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareclickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareLayout:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f10008b

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareToFriendCircleLL:Landroid/widget/LinearLayout;

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareToFriendCircleLL:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareclickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareLayout:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f100093

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareToMoreLL:Landroid/widget/LinearLayout;

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareToMoreLL:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareclickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareLayout:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f100095

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareToCancel:Landroid/widget/LinearLayout;

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareToCancel:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareclickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getActivity()Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/camera/CameraUtil;->isChineseLanguage(Landroid/content/Context;)Z

    move-result v7

    .line 683
    .local v7, "isChinese":Z
    if-nez v7, :cond_0

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getActivity()Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f09018d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 685
    .local v14, "size":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getActivity()Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    .line 687
    .local v3, "density":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareMMSLL:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const v18, 0x7f100090

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 688
    .local v8, "mmsTv":Landroid/widget/TextView;
    int-to-float v0, v14

    move/from16 v17, v0

    div-float v17, v17, v3

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareToWeiXinLL:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const v18, 0x7f10008a

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 691
    .local v16, "weixinTv":Landroid/widget/TextView;
    int-to-float v0, v14

    move/from16 v17, v0

    div-float v17, v17, v3

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextSize(F)V

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareToWeiBoLL:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const v18, 0x7f10008e

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 694
    .local v15, "weiboTv":Landroid/widget/TextView;
    int-to-float v0, v14

    move/from16 v17, v0

    div-float v17, v17, v3

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareToFriendCircleLL:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const v18, 0x7f10008c

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 697
    .local v5, "friendcircleTv":Landroid/widget/TextView;
    int-to-float v0, v14

    move/from16 v17, v0

    div-float v17, v17, v3

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareToMoreLL:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const v18, 0x7f100094

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 703
    .local v9, "moreTv":Landroid/widget/TextView;
    int-to-float v0, v14

    move/from16 v17, v0

    div-float v17, v17, v3

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 707
    .end local v3    # "density":F
    .end local v5    # "friendcircleTv":Landroid/widget/TextView;
    .end local v8    # "mmsTv":Landroid/widget/TextView;
    .end local v9    # "moreTv":Landroid/widget/TextView;
    .end local v14    # "size":I
    .end local v15    # "weiboTv":Landroid/widget/TextView;
    .end local v16    # "weixinTv":Landroid/widget/TextView;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isFakeHorizontal()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getCurrentOrientation()I

    move-result v10

    .line 709
    .local v10, "orientation":I
    const/16 v17, 0x10e

    move/from16 v0, v17

    if-ne v10, v0, :cond_4

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareLayout:Landroid/view/View;

    move-object/from16 v17, v0

    const/high16 v18, 0x42b40000    # 90.0f

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setRotation(F)V

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareLayout:Landroid/view/View;

    move-object/from16 v17, v0

    div-int/lit8 v18, v13, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setPivotX(F)V

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareLayout:Landroid/view/View;

    move-object/from16 v17, v0

    div-int/lit8 v18, v13, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setPivotY(F)V

    .line 713
    new-instance v17, Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareLayout:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v12, v12}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mSharePopWindow:Landroid/widget/PopupWindow;

    .line 723
    .end local v10    # "orientation":I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mSharePopWindow:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/drawable/ColorDrawable;

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mSharePopWindow:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    new-instance v18, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$5;-><init>(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 731
    sget-boolean v17, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShowSharePopupWindowOrientation:Z

    if-eqz v17, :cond_2

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getpath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v11

    .line 733
    .local v11, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getActivity()Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getContentUri(Lcom/lenovo/scg/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareUri:Landroid/net/Uri;

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->showSharePopupWindow(Landroid/net/Uri;)V

    .line 736
    const/16 v17, 0x0

    sput-boolean v17, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShowSharePopupWindowOrientation:Z

    .line 738
    .end local v11    # "path":Lcom/lenovo/scg/gallery3d/data/Path;
    :cond_2
    return-void

    .line 658
    .end local v7    # "isChinese":Z
    :cond_3
    const v17, 0x7f040011

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareLayout:Landroid/view/View;

    goto/16 :goto_0

    .line 714
    .restart local v7    # "isChinese":Z
    .restart local v10    # "orientation":I
    :cond_4
    const/16 v17, 0x5a

    move/from16 v0, v17

    if-ne v10, v0, :cond_1

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareLayout:Landroid/view/View;

    move-object/from16 v17, v0

    const/high16 v18, 0x43870000    # 270.0f

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setRotation(F)V

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareLayout:Landroid/view/View;

    move-object/from16 v17, v0

    div-int/lit8 v18, v12, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setPivotX(F)V

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareLayout:Landroid/view/View;

    move-object/from16 v17, v0

    div-int/lit8 v18, v12, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setPivotY(F)V

    .line 718
    new-instance v17, Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareLayout:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v12, v12}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mSharePopWindow:Landroid/widget/PopupWindow;

    goto/16 :goto_1

    .line 721
    .end local v10    # "orientation":I
    :cond_5
    new-instance v17, Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareLayout:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v13, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mSharePopWindow:Landroid/widget/PopupWindow;

    goto/16 :goto_1
.end method

.method private shareToFriendcircle()V
    .locals 6

    .prologue
    .line 940
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    const-string v5, "com.tencent.mm"

    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 941
    .local v2, "isAppInstalled":Z
    if-nez v2, :cond_0

    .line 942
    const-string v4, "com.tencent.mm"

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->showAppNotinstalledMsg(Ljava/lang/String;)V

    .line 959
    :goto_0
    return-void

    .line 947
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 949
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->getMediaType()Ljava/lang/String;

    move-result-object v3

    .line 950
    .local v3, "mimeType":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 952
    const-string v4, "android.intent.extra.STREAM"

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareUri:Landroid/net/Uri;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 953
    const-string v4, "com.tencent.mm"

    const-string v5, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 955
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 956
    :catch_0
    move-exception v0

    .line 957
    .local v0, "activityNotFoundException":Landroid/content/ActivityNotFoundException;
    const-string v4, "com.tencent.mm"

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->showAppNotinstalledMsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private shareToMMS()V
    .locals 9

    .prologue
    .line 852
    const-string v6, "com.lenovo.ideafriend"

    .line 855
    .local v6, "packgeName":Ljava/lang/String;
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 856
    .local v3, "isAppInstalled1":Z
    if-nez v3, :cond_1

    .line 858
    const-string v6, "com.android.mms"

    .line 860
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 861
    .local v4, "isAppInstalled2":Z
    if-nez v4, :cond_0

    .line 862
    const-string v7, "com.lenovo.ideafriend"

    invoke-direct {p0, v7}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->showAppNotinstalledMsg(Ljava/lang/String;)V

    .line 886
    .end local v4    # "isAppInstalled2":Z
    :cond_0
    :goto_0
    return-void

    .line 869
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 871
    .local v2, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->getMediaType()Ljava/lang/String;

    move-result-object v5

    .line 872
    .local v5, "mimeType":Ljava/lang/String;
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 874
    const-string v7, "android.intent.extra.STREAM"

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareUri:Landroid/net/Uri;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 875
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 877
    :try_start_0
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 878
    :catch_0
    move-exception v0

    .line 880
    .local v0, "activityNotFoundException":Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v7, "com.android.mms"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 881
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 882
    :catch_1
    move-exception v1

    .line 883
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "com.lenovo.ideafriend"

    invoke-direct {p0, v7}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->showAppNotinstalledMsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private shareToMore()V
    .locals 6

    .prologue
    .line 962
    new-instance v2, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getActivity()Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    const v4, 0x7f040169

    invoke-direct {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;-><init>(Landroid/app/Activity;I)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    .line 963
    new-instance v1, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getActivity()Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 964
    .local v1, "listView":Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;
    new-instance v2, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$7;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$7;-><init>(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->setItemClickListener(Lcom/lenovo/scg/gallery3d/edit/SetasListView$ItemClickListener;)V

    .line 972
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$8;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$8;-><init>(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)V

    .line 980
    .local v0, "cancelRunnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    const v4, 0x7f0f07d1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    const v5, 0x7f0f066c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 981
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareToMoreIsShown:Z

    .line 982
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v2, v1, v3, v4}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->setView(Landroid/view/View;II)V

    .line 983
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->showButtonText()V

    .line 984
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->setBackground(I)V

    .line 988
    return-void
.end method

.method private shareToQiezi()V
    .locals 6

    .prologue
    .line 829
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    const-string v5, "com.lenovo.anyshare"

    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 830
    .local v2, "isAppInstalled":Z
    if-nez v2, :cond_0

    .line 831
    const-string v4, "com.lenovo.anyshare"

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->showAppNotinstalledMsg(Ljava/lang/String;)V

    .line 848
    :goto_0
    return-void

    .line 836
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 838
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->getMediaType()Ljava/lang/String;

    move-result-object v3

    .line 839
    .local v3, "mimeType":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 841
    const-string v4, "android.intent.extra.STREAM"

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareUri:Landroid/net/Uri;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 842
    const-string v4, "com.lenovo.anyshare"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 844
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, "activityNotFoundException":Landroid/content/ActivityNotFoundException;
    const-string v4, "com.lenovo.anyshare"

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->showAppNotinstalledMsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private shareToWeiXin()V
    .locals 7

    .prologue
    .line 891
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    const-string v5, "com.tencent.mm"

    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 892
    .local v2, "isAppInstalled":Z
    const-string v4, "PhotoEditFrame"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "shareToWeiXin, isAppInstalled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    if-nez v2, :cond_0

    .line 894
    const-string v4, "com.tencent.mm"

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->showAppNotinstalledMsg(Ljava/lang/String;)V

    .line 911
    :goto_0
    return-void

    .line 899
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 901
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->getMediaType()Ljava/lang/String;

    move-result-object v3

    .line 902
    .local v3, "mimeType":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 904
    const-string v4, "android.intent.extra.STREAM"

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareUri:Landroid/net/Uri;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 905
    const-string v4, "com.tencent.mm"

    const-string v5, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 907
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 908
    :catch_0
    move-exception v0

    .line 909
    .local v0, "activityNotFoundException":Landroid/content/ActivityNotFoundException;
    const-string v4, "com.tencent.mm"

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->showAppNotinstalledMsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private shareToWeibo()V
    .locals 6

    .prologue
    .line 916
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    const-string v5, "com.sina.weibo"

    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 917
    .local v2, "isAppInstalled":Z
    if-nez v2, :cond_0

    .line 918
    const-string v4, "com.sina.weibo"

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->showAppNotinstalledMsg(Ljava/lang/String;)V

    .line 935
    :goto_0
    return-void

    .line 923
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 925
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->getMediaType()Ljava/lang/String;

    move-result-object v3

    .line 926
    .local v3, "mimeType":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 928
    const-string v4, "android.intent.extra.STREAM"

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareUri:Landroid/net/Uri;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 929
    const-string v4, "com.sina.weibo"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 931
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 932
    :catch_0
    move-exception v0

    .line 933
    .local v0, "activityNotFoundException":Landroid/content/ActivityNotFoundException;
    const-string v4, "com.sina.weibo"

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->showAppNotinstalledMsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showAppNotinstalledMsg(Ljava/lang/String;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const v8, 0x7f0f07ea

    const/4 v7, 0x0

    .line 1005
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    const-string v5, "com.lenovo.leos.appstore"

    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 1006
    .local v2, "isAppInstalled":Z
    const-string v4, "PhotoEditFrame"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showAppNotinstalledMsg, appstore, isAppInstalled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    if-nez v2, :cond_0

    .line 1008
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1021
    :goto_0
    return-void

    .line 1014
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "market://details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1015
    .local v3, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1016
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.lenovo.leos.appstore"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1017
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1018
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 1019
    .local v0, "activityNotFoundException":Landroid/content/ActivityNotFoundException;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showSharePopupWindow(Landroid/net/Uri;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 741
    const-string v1, "PhotoEditFrame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kbg374, showSharePopupWindow, fake:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isFakeHorizontal()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareUri:Landroid/net/Uri;

    .line 747
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    .line 748
    .local v0, "mediaItem":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getMediaType()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 749
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareToWeiBoLL:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 755
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getMediaType()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 756
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareToFriendCircleLL:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 761
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mSharePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 762
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mSharePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 763
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mSharePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    .line 765
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isFakeHorizontal()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 766
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mSharePopWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareLayout:Landroid/view/View;

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 770
    :goto_2
    return-void

    .line 751
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareToWeiBoLL:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 758
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareToFriendCircleLL:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 768
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mSharePopWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareLayout:Landroid/view/View;

    const/16 v3, 0x50

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_2
.end method

.method private startTopViewsOutAnim()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 504
    const/4 v0, 0x0

    .line 505
    .local v0, "outAnimation":Landroid/view/animation/TranslateAnimation;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getCurrentOrientation()I

    move-result v3

    rem-int/lit16 v3, v3, 0xb4

    if-eqz v3, :cond_0

    .line 506
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "outAnimation":Landroid/view/animation/TranslateAnimation;
    const/high16 v4, 0x3f800000    # 1.0f

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 512
    .restart local v0    # "outAnimation":Landroid/view/animation/TranslateAnimation;
    :goto_0
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 513
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mTopViews:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 514
    new-instance v1, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$3;-><init>(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 531
    return-void

    .line 509
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "outAnimation":Landroid/view/animation/TranslateAnimation;
    const/high16 v8, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0    # "outAnimation":Landroid/view/animation/TranslateAnimation;
    goto :goto_0
.end method

.method private updateDeleteViews(Z)V
    .locals 3
    .param p1, "clickable"    # Z

    .prologue
    .line 381
    if-eqz p1, :cond_0

    .line 382
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mDeleteViews:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 383
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mDeleteView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020611

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 385
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mDeleteText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0207fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 391
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mDeleteViews:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 388
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mDeleteView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020487

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mDeleteText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private updateEditViews(Z)V
    .locals 3
    .param p1, "clickable"    # Z

    .prologue
    .line 434
    if-eqz p1, :cond_0

    .line 435
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mEditViews:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 436
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mEditView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02060f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 438
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mEditText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0207fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 444
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mEditViews:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 441
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mEditView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0209ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 442
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mEditText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private updateRotateViews(Z)V
    .locals 3
    .param p1, "clickable"    # Z

    .prologue
    .line 408
    if-eqz p1, :cond_0

    .line 409
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRotateViews:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 410
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRotateView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020613

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 412
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRotateText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0207fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 418
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRotateViews:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 415
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRotateView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0204aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 416
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRotateText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private updateShareViews(Z)V
    .locals 3
    .param p1, "clickable"    # Z

    .prologue
    .line 421
    if-eqz p1, :cond_0

    .line 422
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareViews:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 423
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020614

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 425
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0207fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 431
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareViews:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 428
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0204ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 429
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private updateShearViews(Z)V
    .locals 3
    .param p1, "clickable"    # Z

    .prologue
    .line 395
    if-eqz p1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShearViews:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 397
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShearView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020610

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShearText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0207fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 405
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShearViews:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 402
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShearView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020483

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 403
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShearText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public dismissMoreShareDialog()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 993
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareToMoreIsShown:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    if-eqz v1, :cond_0

    .line 994
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->dismissDialog()Z

    .line 995
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareToMoreIsShown:Z

    .line 996
    const/4 v0, 0x1

    .line 998
    :cond_0
    return v0
.end method

.method public getMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 371
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mEditBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mEditBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mEditBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mTopViews:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mTopViews:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mTopViews:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 377
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->updateViews()V

    .line 378
    return-void
.end method

.method public makeAllEditButtonsClickable()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 602
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mEditViews:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 603
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShearViews:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 604
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRotateViews:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 605
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareViews:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 606
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mDeleteViews:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 607
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 608
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 609
    return-void
.end method

.method public makeAllEditButtonsUnclickable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 592
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mEditViews:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 593
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShearViews:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 594
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mRotateViews:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 595
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareViews:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 596
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mDeleteViews:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 597
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 598
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 599
    return-void
.end method

.method public resetPopupWindow()V
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mSharePopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mSharePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShowSharePopupWindowOrientation:Z

    .line 1029
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->dismissPopupWindow()V

    .line 1030
    return-void
.end method

.method public rotateShareDialog()V
    .locals 7

    .prologue
    const v6, 0x7f09010e

    const/4 v5, 0x1

    const v4, 0x7f09010d

    .line 447
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    if-eqz v2, :cond_0

    .line 448
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getCurrentOrientation()I

    move-result v1

    .line 449
    .local v1, "orientation":I
    rem-int/lit16 v2, v1, 0xb4

    if-nez v2, :cond_2

    .line 450
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v5, :cond_1

    .line 451
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090483

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 452
    .local v0, "detailsMaxHeight":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3, v0}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->setDetailsParentWidthHeight(II)V

    .line 461
    .end local v0    # "detailsMaxHeight":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getCurrentOrientation()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->setOrientation(IZ)V

    .line 463
    .end local v1    # "orientation":I
    :cond_0
    return-void

    .line 454
    .restart local v1    # "orientation":I
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->setDetailsParentWidthHeight(II)V

    goto :goto_0

    .line 458
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->setDetailsParentWidthHeight(II)V

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 360
    const-string v0, "jiaxiaowei"

    const-string v1, "PhotoEditFrame-----------show---------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mEditBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mEditBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mEditBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mTopViews:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mTopViews:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mTopViews:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 367
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->updateViews()V

    .line 368
    return-void
.end method

.method public startEditBarInAnimation()V
    .locals 13

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 559
    const/4 v0, 0x0

    .line 560
    .local v0, "outAnimation":Landroid/view/animation/TranslateAnimation;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 561
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "outAnimation":Landroid/view/animation/TranslateAnimation;
    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 567
    .restart local v0    # "outAnimation":Landroid/view/animation/TranslateAnimation;
    :goto_0
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 568
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mEditBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 570
    new-instance v1, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$4;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$4;-><init>(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 589
    return-void

    .line 564
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "outAnimation":Landroid/view/animation/TranslateAnimation;
    move-object v4, v0

    move v5, v1

    move v7, v1

    move v8, v2

    move v9, v1

    move v10, v2

    move v11, v1

    move v12, v2

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0    # "outAnimation":Landroid/view/animation/TranslateAnimation;
    goto :goto_0
.end method

.method public startEditBarOutAnimation()V
    .locals 13

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 470
    const-string v3, "jiaxiaowei"

    const-string/jumbo v4, "startEditBarOutAnimation"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, "outAnimation":Landroid/view/animation/TranslateAnimation;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 474
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "outAnimation":Landroid/view/animation/TranslateAnimation;
    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 480
    .restart local v0    # "outAnimation":Landroid/view/animation/TranslateAnimation;
    :goto_0
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 481
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mEditBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 482
    new-instance v1, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$2;-><init>(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 501
    return-void

    .line 477
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "outAnimation":Landroid/view/animation/TranslateAnimation;
    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v1

    move v9, v1

    move v10, v2

    move v11, v1

    move v12, v2

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0    # "outAnimation":Landroid/view/animation/TranslateAnimation;
    goto :goto_0
.end method

.method public startTopsViewInAnim()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 534
    const/4 v0, 0x0

    .line 535
    .local v0, "inAnimation":Landroid/view/animation/TranslateAnimation;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isFakeHorizontal()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 536
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "inAnimation":Landroid/view/animation/TranslateAnimation;
    const/high16 v2, 0x3f800000    # 1.0f

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 542
    .restart local v0    # "inAnimation":Landroid/view/animation/TranslateAnimation;
    :goto_0
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 543
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mTopViews:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 545
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isStartFromCameraOrContinuePics()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 546
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->setPortrait()V

    .line 556
    :goto_1
    return-void

    .line 539
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "inAnimation":Landroid/view/animation/TranslateAnimation;
    const/high16 v6, -0x40800000    # -1.0f

    move v2, v4

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0    # "inAnimation":Landroid/view/animation/TranslateAnimation;
    goto :goto_0

    .line 549
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isAutoRotate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 550
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->setScreenFullSensor()V

    goto :goto_1

    .line 552
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->setPortrait()V

    goto :goto_1
.end method

.method public updateViews()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->getMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v4

    if-nez v4, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoNameView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 162
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getMediaItemName()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoNameView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isStartFromCamera()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 166
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200bc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    :goto_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isCameraBrustPhoto()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 171
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->updateShearViews(Z)V

    .line 172
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->updateRotateViews(Z)V

    .line 173
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->updateEditViews(Z)V

    .line 174
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->updateShareViews(Z)V

    .line 176
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->updateDeleteViews(Z)V

    goto :goto_0

    .line 168
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02060b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 179
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->getMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getMediaType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    .line 180
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->updateShearViews(Z)V

    .line 181
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->updateRotateViews(Z)V

    .line 182
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->updateEditViews(Z)V

    .line 183
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->updateShareViews(Z)V

    .line 184
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->updateDeleteViews(Z)V

    .line 199
    :goto_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isCanSlidShow()Z

    move-result v4

    if-nez v4, :cond_b

    .line 200
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->updateDeleteViews(Z)V

    .line 207
    :goto_3
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->getMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->getMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "content://mms/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 208
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->updateShareViews(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 215
    :cond_5
    :goto_4
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isSpeechPic()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 216
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->updateEditViews(Z)V

    .line 217
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->updateShearViews(Z)V

    .line 223
    :cond_6
    :try_start_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->getMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->getMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->updateEditViews(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 226
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 187
    :cond_7
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->getMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v4

    and-int/lit16 v4, v4, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_9

    move v1, v2

    .line 188
    .local v1, "supportRotate":Z
    :goto_5
    const/16 v4, 0x80

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->getMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-eq v4, v5, :cond_8

    if-nez v1, :cond_a

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isSpeechPic()Z

    move-result v4

    if-nez v4, :cond_a

    .line 190
    :cond_8
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->updateRotateViews(Z)V

    .line 195
    :goto_6
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->updateEditViews(Z)V

    .line 196
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->updateShearViews(Z)V

    .line 197
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->updateShareViews(Z)V

    goto/16 :goto_2

    .end local v1    # "supportRotate":Z
    :cond_9
    move v1, v3

    .line 187
    goto :goto_5

    .line 192
    .restart local v1    # "supportRotate":Z
    :cond_a
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->updateRotateViews(Z)V

    goto :goto_6

    .line 202
    .end local v1    # "supportRotate":Z
    :cond_b
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->updateDeleteViews(Z)V

    goto/16 :goto_3

    .line 210
    :catch_1
    move-exception v2

    goto :goto_4
.end method
