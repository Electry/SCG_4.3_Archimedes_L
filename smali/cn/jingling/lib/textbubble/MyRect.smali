.class public Lcn/jingling/lib/textbubble/MyRect;
.super Ljava/lang/Object;
.source "MyRect.java"


# instance fields
.field public p1:Lcn/jingling/lib/textbubble/MyPoint;

.field public p2:Lcn/jingling/lib/textbubble/MyPoint;

.field public p3:Lcn/jingling/lib/textbubble/MyPoint;

.field public p4:Lcn/jingling/lib/textbubble/MyPoint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public giveRectAfterTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyRect;
    .locals 3
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    .line 12
    new-instance v0, Lcn/jingling/lib/textbubble/MyRect;

    invoke-direct {v0}, Lcn/jingling/lib/textbubble/MyRect;-><init>()V

    .line 13
    .local v0, "rect":Lcn/jingling/lib/textbubble/MyRect;
    new-instance v1, Lcn/jingling/lib/textbubble/MyPoint;

    iget-object v2, p0, Lcn/jingling/lib/textbubble/MyRect;->p1:Lcn/jingling/lib/textbubble/MyPoint;

    invoke-virtual {v2, p1}, Lcn/jingling/lib/textbubble/MyPoint;->givePointAfterTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(Lcn/jingling/lib/textbubble/MyPoint;)V

    iput-object v1, v0, Lcn/jingling/lib/textbubble/MyRect;->p1:Lcn/jingling/lib/textbubble/MyPoint;

    .line 14
    new-instance v1, Lcn/jingling/lib/textbubble/MyPoint;

    iget-object v2, p0, Lcn/jingling/lib/textbubble/MyRect;->p2:Lcn/jingling/lib/textbubble/MyPoint;

    invoke-virtual {v2, p1}, Lcn/jingling/lib/textbubble/MyPoint;->givePointAfterTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(Lcn/jingling/lib/textbubble/MyPoint;)V

    iput-object v1, v0, Lcn/jingling/lib/textbubble/MyRect;->p2:Lcn/jingling/lib/textbubble/MyPoint;

    .line 15
    new-instance v1, Lcn/jingling/lib/textbubble/MyPoint;

    iget-object v2, p0, Lcn/jingling/lib/textbubble/MyRect;->p3:Lcn/jingling/lib/textbubble/MyPoint;

    invoke-virtual {v2, p1}, Lcn/jingling/lib/textbubble/MyPoint;->givePointAfterTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(Lcn/jingling/lib/textbubble/MyPoint;)V

    iput-object v1, v0, Lcn/jingling/lib/textbubble/MyRect;->p3:Lcn/jingling/lib/textbubble/MyPoint;

    .line 16
    new-instance v1, Lcn/jingling/lib/textbubble/MyPoint;

    iget-object v2, p0, Lcn/jingling/lib/textbubble/MyRect;->p4:Lcn/jingling/lib/textbubble/MyPoint;

    invoke-virtual {v2, p1}, Lcn/jingling/lib/textbubble/MyPoint;->givePointAfterTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(Lcn/jingling/lib/textbubble/MyPoint;)V

    iput-object v1, v0, Lcn/jingling/lib/textbubble/MyRect;->p4:Lcn/jingling/lib/textbubble/MyPoint;

    .line 17
    return-object v0
.end method
