.class public Lcom/arcsoft/imageframeworkv20/plugin/ATI_Version;
.super Ljava/lang/Object;
.source "ATI_Version.java"


# instance fields
.field public mbyArrBuildDate:Ljava/lang/String;

.field public mbyArrCopyRight:Ljava/lang/String;

.field public mbyArrVersion:Ljava/lang/String;

.field public mlBuild:J

.field public mlCodebase:J

.field public mlMajor:J

.field public mlMinor:J


# direct methods
.method constructor <init>(JJJJ)V
    .locals 1
    .param p1, "lCodebase"    # J
    .param p3, "lMajor"    # J
    .param p5, "lMinor"    # J
    .param p7, "lBuild"    # J

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Version;->mlCodebase:J

    .line 18
    iput-wide p3, p0, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Version;->mlMajor:J

    .line 19
    iput-wide p5, p0, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Version;->mlMinor:J

    .line 20
    iput-wide p7, p0, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Version;->mlBuild:J

    .line 21
    return-void
.end method

.method public constructor <init>(JJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "lCodebase"    # J
    .param p3, "lMajor"    # J
    .param p5, "lMinor"    # J
    .param p7, "lBuild"    # J
    .param p9, "sVersion"    # Ljava/lang/String;
    .param p10, "sBuildDate"    # Ljava/lang/String;
    .param p11, "sCopyRight"    # Ljava/lang/String;

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Version;->mlCodebase:J

    .line 8
    iput-wide p3, p0, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Version;->mlMajor:J

    .line 9
    iput-wide p5, p0, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Version;->mlMinor:J

    .line 10
    iput-wide p7, p0, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Version;->mlBuild:J

    .line 11
    iput-object p9, p0, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Version;->mbyArrVersion:Ljava/lang/String;

    .line 12
    iput-object p10, p0, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Version;->mbyArrBuildDate:Ljava/lang/String;

    .line 13
    iput-object p11, p0, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Version;->mbyArrCopyRight:Ljava/lang/String;

    .line 14
    return-void
.end method
