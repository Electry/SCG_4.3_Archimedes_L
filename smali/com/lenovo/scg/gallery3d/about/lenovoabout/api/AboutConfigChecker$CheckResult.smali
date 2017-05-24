.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;
.super Ljava/lang/Object;
.source "AboutConfigChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckResult"
.end annotation


# static fields
.field public static final LEVEL_NORMAL:I = 0x0

.field public static final LEVEL_RED:I = 0x1


# instance fields
.field public content:Ljava/lang/String;

.field public level:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;->level:I

    .line 223
    iput p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;->level:I

    .line 224
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;->title:Ljava/lang/String;

    .line 225
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;->content:Ljava/lang/String;

    .line 226
    return-void
.end method
