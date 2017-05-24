.class public final enum Lcn/jingling/lib/filters/ImageProcessUtils$Type;
.super Ljava/lang/Enum;
.source "ImageProcessUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jingling/lib/filters/ImageProcessUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/jingling/lib/filters/ImageProcessUtils$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTTOM:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

.field private static final synthetic ENUM$VALUES:[Lcn/jingling/lib/filters/ImageProcessUtils$Type;

.field public static final enum LEFT_BOTTOM:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

.field public static final enum LEFT_TOP:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

.field public static final enum RIGHT_BOTTOM:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

.field public static final enum STRENCH:Lcn/jingling/lib/filters/ImageProcessUtils$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    const-string v1, "STRENCH"

    invoke-direct {v0, v1, v2}, Lcn/jingling/lib/filters/ImageProcessUtils$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jingling/lib/filters/ImageProcessUtils$Type;->STRENCH:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    new-instance v0, Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    const-string v1, "RIGHT_BOTTOM"

    invoke-direct {v0, v1, v3}, Lcn/jingling/lib/filters/ImageProcessUtils$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jingling/lib/filters/ImageProcessUtils$Type;->RIGHT_BOTTOM:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    new-instance v0, Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    const-string v1, "LEFT_BOTTOM"

    invoke-direct {v0, v1, v4}, Lcn/jingling/lib/filters/ImageProcessUtils$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jingling/lib/filters/ImageProcessUtils$Type;->LEFT_BOTTOM:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    new-instance v0, Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    const-string v1, "LEFT_TOP"

    invoke-direct {v0, v1, v5}, Lcn/jingling/lib/filters/ImageProcessUtils$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jingling/lib/filters/ImageProcessUtils$Type;->LEFT_TOP:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    new-instance v0, Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v6}, Lcn/jingling/lib/filters/ImageProcessUtils$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jingling/lib/filters/ImageProcessUtils$Type;->BOTTOM:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    .line 14
    const/4 v0, 0x5

    new-array v0, v0, [Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    sget-object v1, Lcn/jingling/lib/filters/ImageProcessUtils$Type;->STRENCH:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcn/jingling/lib/filters/ImageProcessUtils$Type;->RIGHT_BOTTOM:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcn/jingling/lib/filters/ImageProcessUtils$Type;->LEFT_BOTTOM:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcn/jingling/lib/filters/ImageProcessUtils$Type;->LEFT_TOP:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcn/jingling/lib/filters/ImageProcessUtils$Type;->BOTTOM:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcn/jingling/lib/filters/ImageProcessUtils$Type;->ENUM$VALUES:[Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/jingling/lib/filters/ImageProcessUtils$Type;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    return-object v0
.end method

.method public static values()[Lcn/jingling/lib/filters/ImageProcessUtils$Type;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcn/jingling/lib/filters/ImageProcessUtils$Type;->ENUM$VALUES:[Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    array-length v1, v0

    new-array v2, v1, [Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
