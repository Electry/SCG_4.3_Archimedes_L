.class public abstract Lcn/jingling/lib/filters/PartialFilter;
.super Lcn/jingling/lib/filters/Filter;
.source "PartialFilter.java"


# instance fields
.field private mNeededPointNumber:I

.field protected mRadius:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcn/jingling/lib/filters/Filter;-><init>()V

    .line 14
    const/16 v0, 0xa

    iput v0, p0, Lcn/jingling/lib/filters/PartialFilter;->mRadius:I

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Lcn/jingling/lib/filters/PartialFilter;->mNeededPointNumber:I

    .line 12
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "point"    # Landroid/graphics/Point;

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public apply(Landroid/graphics/Bitmap;[Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "point"    # [Landroid/graphics/Point;

    .prologue
    .line 49
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {p0, p1, v0}, Lcn/jingling/lib/filters/PartialFilter;->apply(Landroid/graphics/Bitmap;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getNeededPointNumber()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcn/jingling/lib/filters/PartialFilter;->mNeededPointNumber:I

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method protected setNeededPointNumber(I)V
    .locals 0
    .param p1, "neededPointNumber"    # I

    .prologue
    .line 25
    iput p1, p0, Lcn/jingling/lib/filters/PartialFilter;->mNeededPointNumber:I

    .line 26
    return-void
.end method

.method public setRadius(I)V
    .locals 0
    .param p1, "radius"    # I

    .prologue
    .line 41
    iput p1, p0, Lcn/jingling/lib/filters/PartialFilter;->mRadius:I

    .line 42
    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 29
    invoke-virtual {p0}, Lcn/jingling/lib/filters/PartialFilter;->statisticEvent()V

    .line 30
    return-void
.end method
