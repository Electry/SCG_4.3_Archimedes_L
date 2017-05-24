.class public Lcom/lenovo/scg/camera/ContinuosFileFilter;
.super Ljava/lang/Object;
.source "ContinuosFileFilter.java"

# interfaces
.implements Ljava/io/FileFilter;


# static fields
.field public static final PREFIX:Ljava/lang/String; = "continuous_"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 3
    .param p1, "pathname"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    :cond_0
    :goto_0
    return v0

    .line 14
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "continuous_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    const/4 v0, 0x1

    goto :goto_0
.end method
