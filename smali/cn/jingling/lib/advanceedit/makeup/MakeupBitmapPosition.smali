.class public Lcn/jingling/lib/advanceedit/makeup/MakeupBitmapPosition;
.super Ljava/lang/Object;
.source "MakeupBitmapPosition.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x79a42c1e5686aebfL


# instance fields
.field public mLeftPosition:Landroid/graphics/Point;

.field public mRightPosition:Landroid/graphics/Point;

.field public scale:F


# direct methods
.method public constructor <init>(Landroid/graphics/Point;Landroid/graphics/Point;F)V
    .locals 1
    .param p1, "left"    # Landroid/graphics/Point;
    .param p2, "right"    # Landroid/graphics/Point;
    .param p3, "scale"    # F

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcn/jingling/lib/advanceedit/makeup/MakeupBitmapPosition;->mLeftPosition:Landroid/graphics/Point;

    .line 25
    iput-object v0, p0, Lcn/jingling/lib/advanceedit/makeup/MakeupBitmapPosition;->mRightPosition:Landroid/graphics/Point;

    .line 26
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcn/jingling/lib/advanceedit/makeup/MakeupBitmapPosition;->scale:F

    .line 18
    iput-object p1, p0, Lcn/jingling/lib/advanceedit/makeup/MakeupBitmapPosition;->mLeftPosition:Landroid/graphics/Point;

    .line 19
    iput-object p2, p0, Lcn/jingling/lib/advanceedit/makeup/MakeupBitmapPosition;->mRightPosition:Landroid/graphics/Point;

    .line 20
    iput p3, p0, Lcn/jingling/lib/advanceedit/makeup/MakeupBitmapPosition;->scale:F

    .line 22
    return-void
.end method
