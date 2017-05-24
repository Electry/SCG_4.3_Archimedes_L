.class public Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;
.super Ljava/lang/Object;
.source "TextBubbleStyleParameter.java"


# instance fields
.field public mBottomScale:F

.field public mFileName:Ljava/lang/String;

.field public mLeftScale:F

.field public mRightScale:F

.field public mShadowColor:I

.field public mShadowRadius:F

.field public mShadowX:F

.field public mShadowY:F

.field public mTextColor:I

.field public mTopScale:F

.field public position:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "array"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mFileName:Ljava/lang/String;

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mTextColor:I

    .line 31
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mShadowColor:I

    .line 32
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mShadowRadius:F

    .line 33
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mShadowX:F

    .line 34
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mShadowY:F

    .line 36
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mLeftScale:F

    .line 37
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mTopScale:F

    .line 38
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mRightScale:F

    .line 39
    const/16 v0, 0x9

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mBottomScale:F

    .line 40
    return-void
.end method
