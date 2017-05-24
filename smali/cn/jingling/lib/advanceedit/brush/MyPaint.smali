.class public Lcn/jingling/lib/advanceedit/brush/MyPaint;
.super Landroid/graphics/Paint;
.source "MyPaint.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 8
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 9
    invoke-virtual {p0, v0}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setAntiAlias(Z)V

    .line 10
    invoke-virtual {p0, v0}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setFilterBitmap(Z)V

    .line 11
    invoke-virtual {p0, v0}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setDither(Z)V

    .line 12
    invoke-virtual {p0, v0}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setSubpixelText(Z)V

    .line 13
    return-void
.end method

.method public constructor <init>(Lcn/jingling/lib/advanceedit/brush/MyPaint;)V
    .locals 0
    .param p1, "myPaint"    # Lcn/jingling/lib/advanceedit/brush/MyPaint;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 17
    return-void
.end method
