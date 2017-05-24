.class public Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;
.super Ljava/lang/Object;
.source "CLeImageColorFormat.java"


# static fields
.field public static ABGR8888:I

.field public static ARGB8888:I

.field public static GRAY:I

.field public static RGB565:I

.field public static RGB888:I

.field public static RGBA8888:I

.field public static YUV420sp:I

.field public static YUV422sp:I

.field public static YVU420sp:I

.field public static YVU422sp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->ARGB8888:I

    .line 16
    sget v0, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->ARGB8888:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->ABGR8888:I

    .line 18
    sget v0, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->ABGR8888:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->RGBA8888:I

    .line 20
    sget v0, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->RGBA8888:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->RGB888:I

    .line 22
    sget v0, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->RGB888:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->RGB565:I

    .line 24
    sget v0, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->RGB565:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->GRAY:I

    .line 26
    const/16 v0, 0xb

    sput v0, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->YUV420sp:I

    .line 28
    const/16 v0, 0xc

    sput v0, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->YVU420sp:I

    .line 30
    const/16 v0, 0xf

    sput v0, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->YUV422sp:I

    .line 32
    const/16 v0, 0x10

    sput v0, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->YVU422sp:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
