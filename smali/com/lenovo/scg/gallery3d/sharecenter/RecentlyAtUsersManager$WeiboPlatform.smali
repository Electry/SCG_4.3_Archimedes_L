.class public final enum Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;
.super Ljava/lang/Enum;
.source "RecentlyAtUsersManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WeiboPlatform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

.field public static final enum SINA:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

.field public static final enum TENCENT:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    const-string v1, "SINA"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->SINA:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    const-string v1, "TENCENT"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->TENCENT:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    sget-object v1, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->SINA:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->TENCENT:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->$VALUES:[Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->$VALUES:[Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    invoke-virtual {v0}, [Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    return-object v0
.end method
