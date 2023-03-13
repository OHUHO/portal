export default class AppFunctions {
    static addClass(element, className) {
        document.querySelector(element).classList.add(className)
    }

    static removeClass(element, className) {
        document.querySelector(element).classList.remove(className)
    }

    static toggleClass(element, className) {
        document.querySelector(element).classList.toggle(className)
    }

    static flatDeep(arr, d = 1) {
        return d > 0 ? arr.reduce((acc, val) => acc.concat(Array.isArray(val) ? this.flatDeep(val, d - 1) : val), []) : arr.slice();
    }

    static slugify(text) {
        return text
            .toString()
            .toLowerCase()
            .replace(/\s+/g, '-') // Replace spaces with -
            .replace(/[^\w-]+/g, '') // Remove all non-word chars
            .replace(/--+/g, '-') // Replace multiple - with single -
            .replace(/^-+/, '') // Trim - from start of text
            .replace(/-+$/, '') // Trim - from end of text
    }

    static containsObject(obj, list) {
        let i;
        for (i = 0; i < list.length; i++) {
            if (list[i].slug === obj.slug) {
                return i;
            }
        }

        return -1;
    }
}