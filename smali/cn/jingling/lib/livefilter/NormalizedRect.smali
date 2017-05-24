.class public Lcn/jingling/lib/livefilter/NormalizedRect;
.super Ljava/lang/Object;
.source "NormalizedRect.java"


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public top:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "top"    # F
    .param p4, "bottom"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v0, p0, Lcn/jingling/lib/livefilter/NormalizedRect;->left:F

    .line 8
    iput v0, p0, Lcn/jingling/lib/livefilter/NormalizedRect;->top:F

    .line 9
    iput v1, p0, Lcn/jingling/lib/livefilter/NormalizedRect;->right:F

    .line 10
    iput v1, p0, Lcn/jingling/lib/livefilter/NormalizedRect;->bottom:F

    .line 21
    iput p1, p0, Lcn/jingling/lib/livefilter/NormalizedRect;->left:F

    .line 22
    iput p2, p0, Lcn/jingling/lib/livefilter/NormalizedRect;->right:F

    .line 23
    iput p3, p0, Lcn/jingling/lib/livefilter/NormalizedRect;->top:F

    .line 24
    iput p4, p0, Lcn/jingling/lib/livefilter/NormalizedRect;->bottom:F

    .line 25
    return-void
.end method
