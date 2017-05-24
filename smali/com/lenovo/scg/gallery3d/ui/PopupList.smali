.class public Lcom/lenovo/scg/gallery3d/ui/PopupList;
.super Ljava/lang/Object;
.source "PopupList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/PopupList$ItemDataAdapter;,
        Lcom/lenovo/scg/gallery3d/ui/PopupList$Item;,
        Lcom/lenovo/scg/gallery3d/ui/PopupList$OnPopupItemClickListener;
    }
.end annotation


# instance fields
.field private final mAnchorView:Landroid/view/View;

.field private mContentList:Landroid/widget/ListView;

.field private final mContext:Landroid/content/Context;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/ui/PopupList$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnGLobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnPopupItemClickListener:Lcom/lenovo/scg/gallery3d/ui/PopupList$OnPopupItemClickListener;

.field private mPopupHeight:I

.field private mPopupOffsetX:I

.field private mPopupOffsetY:I

.field private mPopupWidth:I

.field private mPopupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchorView"    # Landroid/view/View;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mItems:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/PopupList$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/PopupList$1;-><init>(Lcom/lenovo/scg/gallery3d/ui/PopupList;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 114
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/PopupList$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/PopupList$2;-><init>(Lcom/lenovo/scg/gallery3d/ui/PopupList;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 126
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/PopupList$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/PopupList$3;-><init>(Lcom/lenovo/scg/gallery3d/ui/PopupList;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mOnGLobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 82
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mAnchorView:Landroid/view/View;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/ui/PopupList;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PopupList;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/ui/PopupList;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PopupList;
    .param p1, "x1"    # Landroid/widget/PopupWindow;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/ui/PopupList;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PopupList;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/ui/PopupList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PopupList;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/ui/PopupList;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PopupList;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/ui/PopupList;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PopupList;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mOnGLobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/ui/PopupList;)Lcom/lenovo/scg/gallery3d/ui/PopupList$OnPopupItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PopupList;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mOnPopupItemClickListener:Lcom/lenovo/scg/gallery3d/ui/PopupList$OnPopupItemClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/ui/PopupList;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PopupList;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PopupList;->updatePopupLayoutParams()V

    return-void
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/ui/PopupList;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PopupList;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mPopupOffsetX:I

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/ui/PopupList;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PopupList;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mPopupOffsetY:I

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/ui/PopupList;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PopupList;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mPopupWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/ui/PopupList;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PopupList;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mPopupHeight:I

    return v0
.end method

.method private createPopupWindow()Landroid/widget/PopupWindow;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 163
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 164
    .local v0, "popup":Landroid/widget/PopupWindow;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 166
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02070b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    new-instance v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mContext:Landroid/content/Context;

    const v3, 0x101006d

    invoke-direct {v1, v2, v5, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mContentList:Landroid/widget/ListView;

    .line 169
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mContentList:Landroid/widget/ListView;

    new-instance v2, Lcom/lenovo/scg/gallery3d/ui/PopupList$ItemDataAdapter;

    invoke-direct {v2, p0, v5}, Lcom/lenovo/scg/gallery3d/ui/PopupList$ItemDataAdapter;-><init>(Lcom/lenovo/scg/gallery3d/ui/PopupList;Lcom/lenovo/scg/gallery3d/ui/PopupList$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mContentList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 171
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mContentList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 172
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 173
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 175
    return-object v0
.end method

.method private updatePopupLayoutParams()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 148
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mContentList:Landroid/widget/ListView;

    .line 149
    .local v0, "content":Landroid/widget/ListView;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 151
    .local v3, "popup":Landroid/widget/PopupWindow;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 152
    .local v2, "p":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 154
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;)I

    move-result v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v4, v5

    .line 155
    .local v1, "maxHeight":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mContentList:Landroid/widget/ListView;

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/high16 v6, -0x80000000

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->measure(II)V

    .line 156
    invoke-virtual {v0}, Landroid/widget/ListView;->getMeasuredWidth()I

    move-result v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mPopupWidth:I

    .line 157
    invoke-virtual {v0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mPopupHeight:I

    .line 158
    iget v4, v2, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mPopupOffsetX:I

    .line 159
    iget v4, v2, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mPopupOffsetY:I

    .line 160
    return-void
.end method


# virtual methods
.method public addItem(ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/PopupList$Item;

    invoke-direct {v1, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/PopupList$Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public clearItems()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 96
    return-void
.end method

.method public findItem(I)Lcom/lenovo/scg/gallery3d/ui/PopupList$Item;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 179
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/PopupList$Item;

    .line 180
    .local v1, "item":Lcom/lenovo/scg/gallery3d/ui/PopupList$Item;
    iget v2, v1, Lcom/lenovo/scg/gallery3d/ui/PopupList$Item;->id:I

    if-ne v2, p1, :cond_0

    .line 182
    .end local v1    # "item":Lcom/lenovo/scg/gallery3d/ui/PopupList$Item;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOnPopupItemClickListener(Lcom/lenovo/scg/gallery3d/ui/PopupList$OnPopupItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/PopupList$OnPopupItemClickListener;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mOnPopupItemClickListener:Lcom/lenovo/scg/gallery3d/ui/PopupList$OnPopupItemClickListener;

    .line 88
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mOnGLobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 140
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PopupList;->createPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 141
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PopupList;->updatePopupLayoutParams()V

    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mPopupWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 143
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mPopupHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 144
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mAnchorView:Landroid/view/View;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mPopupOffsetX:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList;->mPopupOffsetY:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0
.end method
