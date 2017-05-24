.class public Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;
.super Ljava/lang/Object;
.source "SinglePhotoLayout.java"


# static fields
.field public static final IMGID:Ljava/lang/String; = "img_id"

.field private static final MSG_HIDE_DUMY_PROGRESS:I = 0x2

.field private static final MSG_UPDATE_DUMY_PROGRESS:I = 0x1

.field public static final PATH:Ljava/lang/String; = "path"


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;

.field private mActivity:Landroid/app/Activity;

.field private mBackView:Landroid/widget/ImageView;

.field private mDumyProgress:I

.field private mId:J

.field private mLoadImagePrpgressBar:Landroid/widget/ProgressBar;

.field private mOriBitmap:Landroid/graphics/Bitmap;

.field private mOriPhotoUri:Ljava/lang/String;

.field private mOriPhotoView:Landroid/widget/ImageView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressRandom:Ljava/util/Random;

.field private mSaveSuccess:Z

.field private mSetasBgView:Landroid/widget/TextView;

.field private mSinglePhotoLayout:Landroid/widget/RelativeLayout;

.field private mTtile:Landroid/widget/TextView;

.field private mUpdateProgressHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;Landroid/view/View;)V
    .locals 2
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mId:J

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mDumyProgress:I

    .line 62
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout$1;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mUpdateProgressHandler:Landroid/os/Handler;

    .line 157
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout$2;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->clickListener:Landroid/view/View$OnClickListener;

    .line 92
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mActivity:Landroid/app/Activity;

    .line 93
    const v0, 0x7f100755

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mSinglePhotoLayout:Landroid/widget/RelativeLayout;

    .line 94
    const v0, 0x7f100757

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mBackView:Landroid/widget/ImageView;

    .line 95
    const v0, 0x7f10075a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mOriPhotoView:Landroid/widget/ImageView;

    .line 96
    const v0, 0x7f10075c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mSetasBgView:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f100758

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mTtile:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mBackView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mSetasBgView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v0, 0x7f10075d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mProgressBar:Landroid/widget/ProgressBar;

    .line 101
    const v0, 0x7f100759

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mLoadImagePrpgressBar:Landroid/widget/ProgressBar;

    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mLoadImagePrpgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mSetasBgView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mProgressRandom:Ljava/util/Random;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    .prologue
    .line 23
    iget v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mDumyProgress:I

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mDumyProgress:I

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;)Ljava/util/Random;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mProgressRandom:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mOriBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mOriBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mLoadImagePrpgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mUpdateProgressHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mSaveSuccess:Z

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mSetasBgView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mBackView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mOriPhotoUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mId:J

    return-wide v0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mSinglePhotoLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mSinglePhotoLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 147
    :cond_0
    return-void
.end method

.method public hideProgressBar()V
    .locals 4

    .prologue
    .line 200
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mUpdateProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 201
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mLoadImagePrpgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 202
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mUpdateProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 207
    return-void
.end method

.method public isGone()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mSinglePhotoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 150
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mSinglePhotoLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mSinglePhotoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 153
    :cond_0
    return v0
.end method

.method public setPhoto(Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 109
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mOriBitmap:Landroid/graphics/Bitmap;

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v4, v5

    .line 111
    .local v4, "width":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v0, v5

    .line 112
    .local v0, "height":F
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v1, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 113
    .local v1, "imageViewWidth":I
    int-to-float v5, v1

    div-float v3, v5, v4

    .line 114
    .local v3, "scale":F
    const-string v5, "jiaxiaowei"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "---------------scale:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 116
    .local v2, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 117
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mOriPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 118
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mOriPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 120
    .end local v0    # "height":F
    .end local v1    # "imageViewWidth":I
    .end local v2    # "matrix":Landroid/graphics/Matrix;
    .end local v3    # "scale":F
    .end local v4    # "width":F
    :cond_0
    return-void
.end method

.method public setPhoto(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 123
    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v4, v5

    .line 125
    .local v4, "width":F
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v0, v5

    .line 126
    .local v0, "height":F
    const-string v5, "jiaxiaowei"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-------------drawable.width:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",height:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v1, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 128
    .local v1, "imageViewWidth":I
    int-to-float v5, v1

    div-float v3, v5, v4

    .line 129
    .local v3, "scale":F
    const-string v5, "jiaxiaowei"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "---------------scale:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 131
    .local v2, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 132
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mOriPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mOriPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 135
    .end local v0    # "height":F
    .end local v1    # "imageViewWidth":I
    .end local v2    # "matrix":Landroid/graphics/Matrix;
    .end local v3    # "scale":F
    .end local v4    # "width":F
    :cond_0
    return-void
.end method

.method public setPhotoId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 215
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mId:J

    .line 216
    return-void
.end method

.method public setPhotoUri(Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 210
    const-string v0, "jiaxiaowei"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---------mOriPhotoUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mOriPhotoUri:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setSaveSuccess(Z)V
    .locals 0
    .param p1, "saveSuccess"    # Z

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mSaveSuccess:Z

    .line 224
    return-void
.end method

.method public setSinglePhotoPageTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mTtile:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mSinglePhotoLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mSinglePhotoLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 141
    :cond_0
    return-void
.end method

.method public showProgressBar()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mSetasBgView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iput v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mDumyProgress:I

    .line 189
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mLoadImagePrpgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mLoadImagePrpgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mDumyProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 191
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->mUpdateProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 197
    return-void
.end method
