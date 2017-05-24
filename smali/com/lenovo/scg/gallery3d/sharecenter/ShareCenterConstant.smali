.class public Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;
.super Ljava/lang/Object;
.source "ShareCenterConstant.java"


# static fields
.field public static final ACTION_GOTO_SHARECENTER:Ljava/lang/String; = "com.android.gallery.action.SHARECENTER"

.field private static final DEBUG:Z = true

.field public static final KEY_DRAFT_CONTENT:Ljava/lang/String; = "draft_content"

.field public static final KEY_IMAGE_PATH:Ljava/lang/String; = "image_path"

.field public static final KEY_IMAGE_URI:Ljava/lang/String; = "image_uri"

.field public static final KEY_IS_FROM_DRAFT:Ljava/lang/String; = "is_from_draft"

.field public static final LOCAL_FILE_PATH:Ljava/lang/String; = "sharecenter/"

.field public static final SHARE_CENTER_DEFAULT_CONTENT:Ljava/lang/String; = "\u7528#\u8054\u60f3\u8d85\u7ea7\u76f8\u673a\u4e0e\u76f8\u518c#\u5206\u4eab\u4e86\u4e00\u5f20\u56fe\u7247"

.field private static final TAG:Ljava/lang/String; = "ShareCenter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 40
    const-string v0, "ShareCenter"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v0, "ShareCenter"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public static logI(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v0, "ShareCenter"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method
