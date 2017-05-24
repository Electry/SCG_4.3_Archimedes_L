.class public Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;
.super Landroid/widget/HorizontalScrollView;
.source "SelectedPhotoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView$OnDeleteListener;
    }
.end annotation


# instance fields
.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView$OnDeleteListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mInflate:Landroid/view/LayoutInflater;

.field private mPadding:I

.field private mSelectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/Image;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 38
    const/16 v0, 0x19

    iput v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->mPadding:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->mSelectList:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->listeners:Ljava/util/ArrayList;

    .line 46
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->mContext:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->initView()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/16 v0, 0x19

    iput v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->mPadding:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->mSelectList:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->listeners:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->mContext:Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->initView()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->mContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->mSelectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->listeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090479

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->mPadding:I

    .line 58
    const/high16 v0, 0x1000000

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->setScrollBarStyle(I)V

    .line 59
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->fullScroll(I)Z

    .line 60
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->mContainer:Landroid/widget/LinearLayout;

    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->mContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->mContainer:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->mInflate:Landroid/view/LayoutInflater;

    .line 66
    return-void
.end method


# virtual methods
.method public getmSelectList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->mSelectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public notifyDataChange(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/Image;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "images":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/boxcontrol/Image;>;"
    const/4 v8, -0x2

    .line 69
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->mSelectList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 70
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->mSelectList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 71
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 73
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 74
    .local v1, "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->mInflate:Landroid/view/LayoutInflater;

    const v6, 0x7f04002b

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 75
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    new-instance v5, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView$1;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView$1;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v5, 0x7f1000a9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 89
    .local v3, "photo":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->miniThumbBitmap(Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 92
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 93
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-eqz v5, :cond_0

    .line 94
    iget v5, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->mPadding:I

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 97
    :cond_0
    const/16 v5, 0x50

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 98
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    const/16 v5, 0x42

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->fullScroll(I)Z

    goto :goto_0

    .line 101
    .end local v1    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "photo":Landroid/widget/ImageView;
    .end local v4    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setmOnDeleteListener(Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView$OnDeleteListener;)V
    .locals 1
    .param p1, "mOnDeleteListener"    # Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView$OnDeleteListener;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_0
    return-void
.end method
