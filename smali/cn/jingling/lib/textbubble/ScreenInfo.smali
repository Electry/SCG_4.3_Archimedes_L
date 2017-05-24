.class public Lcn/jingling/lib/textbubble/ScreenInfo;
.super Ljava/lang/Object;
.source "ScreenInfo.java"


# static fields
.field public static mScreenHeight:I

.field public static mScreenWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScreenHeight()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcn/jingling/lib/textbubble/ScreenInfo;->mScreenHeight:I

    return v0
.end method

.method public static getScreenHeight(Landroid/app/Activity;)I
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 35
    sget v0, Lcn/jingling/lib/textbubble/ScreenInfo;->mScreenHeight:I

    if-gtz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 36
    sput v0, Lcn/jingling/lib/textbubble/ScreenInfo;->mScreenHeight:I

    .line 39
    :cond_0
    sget v0, Lcn/jingling/lib/textbubble/ScreenInfo;->mScreenHeight:I

    return v0
.end method

.method public static getScreenWidth()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcn/jingling/lib/textbubble/ScreenInfo;->mScreenWidth:I

    return v0
.end method

.method public static getScreenWidth(Landroid/app/Activity;)I
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 26
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenInfo;->getScreenWidth()I

    move-result v0

    if-gtz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 27
    sput v0, Lcn/jingling/lib/textbubble/ScreenInfo;->mScreenWidth:I

    .line 30
    :cond_0
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenInfo;->getScreenWidth()I

    move-result v0

    return v0
.end method

.method public static setScreenInfo(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 10
    sput v0, Lcn/jingling/lib/textbubble/ScreenInfo;->mScreenWidth:I

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 12
    sput v0, Lcn/jingling/lib/textbubble/ScreenInfo;->mScreenHeight:I

    .line 15
    return-void
.end method
