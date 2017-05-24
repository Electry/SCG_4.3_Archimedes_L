.class public Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;
.super Ljava/lang/Object;
.source "CloudActionBarLoadAnim.java"


# instance fields
.field private mCurrentIndex:I

.field private mImageView1:Landroid/widget/ImageView;

.field private mImageView2:Landroid/widget/ImageView;

.field private mImageView3:Landroid/widget/ImageView;

.field private mImageView4:Landroid/widget/ImageView;

.field private mImageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mParentView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mImageViews:Ljava/util/ArrayList;

    .line 32
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mParentView:Landroid/view/ViewGroup;

    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mParentView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mParentView:Landroid/view/ViewGroup;

    const v1, 0x7f1002d7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mImageView1:Landroid/widget/ImageView;

    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mParentView:Landroid/view/ViewGroup;

    const v1, 0x7f1002d8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mImageView2:Landroid/widget/ImageView;

    .line 37
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mParentView:Landroid/view/ViewGroup;

    const v1, 0x7f1002d9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mImageView3:Landroid/widget/ImageView;

    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mParentView:Landroid/view/ViewGroup;

    const v1, 0x7f1002da

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mImageView4:Landroid/widget/ImageView;

    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mImageViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mImageView1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mImageViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mImageViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mImageView3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mImageViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mImageView4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->startAnim()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;

    .prologue
    .line 15
    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;
    .param p1, "x1"    # I

    .prologue
    .line 15
    iput p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mImageViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mParentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private startAnim()V
    .locals 7

    .prologue
    .line 79
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mImageViews:Ljava/util/ArrayList;

    iget v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mCurrentIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 80
    .local v1, "imageView1":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mImageViews:Ljava/util/ArrayList;

    iget v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mCurrentIndex:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    rem-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 81
    .local v2, "imageView2":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mImageViews:Ljava/util/ArrayList;

    iget v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mCurrentIndex:I

    add-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    rem-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 82
    .local v3, "imageView3":Landroid/widget/ImageView;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 83
    .local v0, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 84
    new-instance v4, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim$2;

    invoke-direct {v4, p0, v1, v3, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim$2;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 105
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 107
    return-void
.end method

.method private startBgAnim()V
    .locals 4

    .prologue
    .line 56
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 57
    .local v0, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 58
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 59
    new-instance v1, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim$1;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 76
    return-void
.end method


# virtual methods
.method public startAnim(Z)V
    .locals 2
    .param p1, "hasBackground"    # Z

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->startBgAnim()V

    .line 53
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mParentView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 51
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->startAnim()V

    goto :goto_0
.end method

.method public stopAnim()V
    .locals 4

    .prologue
    .line 110
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mParentView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 111
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 112
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 113
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 114
    new-instance v1, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim$3;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 139
    .end local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    :cond_0
    return-void
.end method
