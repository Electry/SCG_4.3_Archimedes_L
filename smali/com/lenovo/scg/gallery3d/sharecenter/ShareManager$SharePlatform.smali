.class public final enum Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;
.super Ljava/lang/Enum;
.source "ShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SharePlatform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

.field public static final enum SINA:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

.field public static final enum TENCENT:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    const-string v1, "SINA"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;->SINA:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    const-string v1, "TENCENT"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;->TENCENT:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    sget-object v1, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;->SINA:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;->TENCENT:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;->$VALUES:[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;->$VALUES:[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    invoke-virtual {v0}, [Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    return-object v0
.end method
