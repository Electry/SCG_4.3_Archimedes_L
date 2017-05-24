.class public Lcom/lenovo/scg/photos/views/SelectedPhotoView;
.super Landroid/widget/HorizontalScrollView;
.source "SelectedPhotoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/photos/views/SelectedPhotoView$OnDeleteListener;
    }
.end annotation


# instance fields
.field private final PADDING:I

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/photos/views/SelectedPhotoView$OnDeleteListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mInflate:Landroid/view/LayoutInflater;

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
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->PADDING:I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->mSelectList:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->listeners:Ljava/util/ArrayList;

    .line 44
    iput-object p1, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->mContext:Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->initView()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->PADDING:I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->mSelectList:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->listeners:Ljava/util/ArrayList;

    .line 50
    iput-object p1, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->mContext:Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->initView()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/photos/views/SelectedPhotoView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/views/SelectedPhotoView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->mContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/photos/views/SelectedPhotoView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/views/SelectedPhotoView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->mSelectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/photos/views/SelectedPhotoView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/views/SelectedPhotoView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->listeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 55
    const/4 v0, 0x6

    invoke-virtual {p0, v2, v0, v2, v2}, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->setPadding(IIII)V

    .line 56
    const/high16 v0, 0x1000000

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->setScrollBarStyle(I)V

    .line 57
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->mContainer:Landroid/widget/LinearLayout;

    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->mContainer:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x42980000    # 76.0f

    sget v4, Lcom/lenovo/scg/photos/AlbumActivity;->denty:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->mInflate:Landroid/view/LayoutInflater;

    .line 61
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
    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->mSelectList:Ljava/util/ArrayList;

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

    .line 64
    iget-object v5, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->mSelectList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 65
    iget-object v5, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->mSelectList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 66
    iget-object v5, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 67
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 68
    .local v1, "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    iget-object v5, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->mInflate:Landroid/view/LayoutInflater;

    const v6, 0x7f040135

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 69
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    new-instance v5, Lcom/lenovo/scg/photos/views/SelectedPhotoView$1;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/photos/views/SelectedPhotoView$1;-><init>(Lcom/lenovo/scg/photos/views/SelectedPhotoView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v5, 0x7f1000a9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 83
    .local v3, "photo":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->miniThumbBitmap(Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 86
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x50

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 87
    iget-object v5, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 89
    .end local v1    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "photo":Landroid/widget/ImageView;
    .end local v4    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setmOnDeleteListener(Lcom/lenovo/scg/photos/views/SelectedPhotoView$OnDeleteListener;)V
    .locals 1
    .param p1, "mOnDeleteListener"    # Lcom/lenovo/scg/photos/views/SelectedPhotoView$OnDeleteListener;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    return-void
.end method
