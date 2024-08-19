window.addEventListener("load", news_list);

async function news_list() {
    await fetch('/posts')
        .then(resp => resp.json())
        .then((data) => {
            let html = ``;
            // element.insertAdjacentHTML('beforeend', '<p>Hello, World!</p>');
            data?.forEach(element => {
                html += `<tr class="single-item">
                            <td>
                                <div class="item-checkbox ms-1">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input checkbox"
                                            id="checkBox_1">
                                        <label class="custom-control-label"
                                            for="checkBox_1"></label>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <a href="/detail" class="hstack gap-3">
                                    <div class="avatar-image avatar-md">
                                        <img src="assets/images/avatar/1.png" alt=""
                                            class="img-fluid">
                                    </div>
                                    <div>
                                        <span class="text-truncate-1-line">Alexandra Della</span>
                                    </div>
                                </a>
                            </td>
                            <td><a href="/mail">alex.della@outlook.com</a></td>
                            <td>
                                <div class="hstack gap-2">
                                    <div class="avatar-text avatar-sm">
                                        <i class="feather-facebook"></i>
                                    </div>
                                    <a href="javascript:void(0);">Facebook</a>
                                </div>
                            </td>
                            <td><a href="tel:">(375) 9632 548</a></td>
                            <td>2023-04-05, 00:05PM</td>
                            <td>
                                <select class="form-control" data-select2-selector="status">
                                    <option value="primary" data-bg="bg-primary">New</option>
                                    <option value="warning" data-bg="bg-warning">Working</option>
                                    <option value="success" data-bg="bg-success">Qualified</option>
                                    <option value="danger" data-bg="bg-danger">Declined</option>
                                    <option value="teal" data-bg="bg-teal">Customer</option>
                                    <option value="indigo" data-bg="bg-indigo" selected>Contacted
                                    </option>
                                </select>
                            </td>
                            <td>
                                <div class="hstack gap-2 justify-content-end">
                                    <a href="leads-view.html" class="avatar-text avatar-md">
                                        <i class="feather feather-eye"></i>
                                    </a>
                                    <div class="dropdown">
                                        <a href="javascript:void(0)" class="avatar-text avatar-md"
                                            data-bs-toggle="dropdown" data-bs-offset="0,21">
                                            <i class="feather feather-more-horizontal"></i>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li>
                                                <a class="dropdown-item" href="javascript:void(0)">
                                                    <i class="feather feather-edit-3 me-3"></i>
                                                    <span>Edit</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a class="dropdown-item printBTN"
                                                    href="javascript:void(0)">
                                                    <i class="feather feather-printer me-3"></i>
                                                    <span>Print</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a class="dropdown-item" href="javascript:void(0)">
                                                    <i class="feather feather-clock me-3"></i>
                                                    <span>Remind</span>
                                                </a>
                                            </li>
                                            <li class="dropdown-divider"></li>
                                            <li>
                                                <a class="dropdown-item" href="javascript:void(0)">
                                                    <i class="feather feather-archive me-3"></i>
                                                    <span>Archive</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a class="dropdown-item" href="javascript:void(0)">
                                                    <i
                                                        class="feather feather-alert-octagon me-3"></i>
                                                    <span>Report Spam</span>
                                                </a>
                                            </li>
                                            <li class="dropdown-divider"></li>
                                            <li>
                                                <a class="dropdown-item" href="javascript:void(0)">
                                                    <i class="feather feather-trash-2 me-3"></i>
                                                    <span>Delete</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </td>
                        </tr>`;
                    });
                document.getElementById("datanews").innerHTML = html;
                })
        }